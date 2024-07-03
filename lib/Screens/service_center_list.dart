import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:motor_doc/functions/category_image.dart';

import 'service_center_details_page.dart';

class ServiceCenterList extends StatelessWidget {
  final String category;
  const ServiceCenterList({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 40),
          Text(
            category,
            style: const TextStyle(color: Colors.white, fontSize: 30),
          ),
          StreamBuilder(
            stream: FirebaseFirestore.instance
                .collection('Service Centers')
                // .orderBy('Rating', descending: true)
                .where('Category', arrayContainsAny: [category])
                .snapshots(),
            builder: (context,
                AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                return const Center(
                    child: Text('No Service Centers found',
                        style: TextStyle(color: Colors.white)));
              }
              return SizedBox(
                height: MediaQuery.of(context).size.height - 130,
                child: ListView.builder(
                  itemCount: snapshot.data!.docs.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ServiceCenterPage(
                                      name: snapshot.data!.docs[index]['Name'],
                                      place: snapshot.data!.docs[index]
                                          ['Place'],
                                      phone: snapshot.data!.docs[index]
                                          ['Contact Number'],
                                      services: snapshot.data!.docs[index]
                                          ['Category'],
                                    )));
                      },
                      child: ListTile(
                        textColor: Colors.white,
                        leading: CategoryImage.getImage(category),
                        title: Text(snapshot.data!.docs[index]['Name']),
                        subtitle: Text(snapshot.data!.docs[index]['Place']),
                        trailing: Text(
                            snapshot.data!.docs[index]['Rating'].toString()),
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
