import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:motor_doc/DBInject/dbinject.dart';
import 'package:motor_doc/Widgets/home_screen_service_tile.dart';

import '../Widgets/bottom_navigation.dart';
// import '../themes/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Expanded(child: Container(color: CupertinoColors.darkBackgroundGray)),
          Padding(
            padding: const EdgeInsets.all(50),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/notification');
                      },
                      child: const Icon(
                        Icons.notifications,
                        color: Colors.white,
                        size: 30,
                      ),
                    )
                  ],
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/carDetails');
                  },
                  child: Container(
                    height: 150,
                    margin: const EdgeInsets.only(top: 30),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Image.asset("assets/figma_imports/home/car.png"),
                  ),
                ),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.only(top: 20, bottom: 20),
                  child: const Text(
                    "Service Centres",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
                StreamBuilder(
                    stream: FirebaseFirestore.instance
                        .collection('Service Centers').orderBy('Rating', descending: true).limit(20)
                        .snapshots(),
                    builder: (context,
                        AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>>
                            snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                      if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                        return const Text('No Service Centers found');
                      }
                      return SizedBox(
                        height: 220,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,

                          itemCount: snapshot.data!.docs.length,
                          itemBuilder: (context, index) => ServiceTile(
                              rating:
                                  snapshot.data!.docs[index].data()['Rating'].toString(),
                              headtext:
                                  snapshot.data!.docs[index].data()['Name'],
                              subtext:
                                  snapshot.data!.docs[index].data()['Place']),
                        ),
                      );
                    }),
                const Center(
                  child: Text(
                    "Chart",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
                Container(),
                // const ElevatedButton(
                //     onPressed: dbinject, child: Text('Inject DB')),
              ],
            ),
          ),
          const BottomNavigations(bottomNavigationIndex: 1),
        ],
      ),
    );
  }
}

