import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../Widgets/bottom_navigation.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(color: const Color(0xFF191C32)), // Changed background color
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Profile",
                        style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontSize: 40,
                            decoration: TextDecoration.none),
                      ),
                      IconButton(onPressed: (){Navigator.pushNamed(context, '/login');}, icon: Icon(Icons.logout, color: Colors.white,))
                    ],
                  ),
                  const SizedBox(height: 40),
                  Center(
                    child: const CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.person,
                        size: 50,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "Name: ${FirebaseAuth.instance.currentUser!.displayName}",
                    style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: 20,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "Email: ${FirebaseAuth.instance.currentUser!.email}",
                    style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: 20,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  StreamBuilder(
                    stream: FirebaseFirestore.instance
                        .collection('Vehicle')
                        .where('Owner',
                            isEqualTo: FirebaseAuth.instance.currentUser!.uid)
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
                        return const Text('No Cars Available',
                            style: TextStyle(color: Colors.white));
                      }
                      return SizedBox(
                        height: MediaQuery.of(context).size.height *.5,
                        child: ListView.builder(
                            itemCount: snapshot.data!.docs.length,
                            itemBuilder: (context, index) => Column(
                                  children: [
                                    Text(
                                      "Vehicle: ${snapshot.data!.docs[index].data()['Vehicle Name']}",
                                      style: GoogleFonts.roboto(
                                        color: Colors.white,
                                        fontSize: 20,
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                    Text(
                                      "Number: ${snapshot.data!.docs[index].data()['Vehicle Number']}",
                                      style: GoogleFonts.roboto(
                                        color: Colors.white,
                                        fontSize: 20,
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                    Text(
                                      "Age: ${snapshot.data!.docs[index].data()['Age of Vehicle']}",
                                      style: GoogleFonts.roboto(
                                        color: Colors.white,
                                        fontSize: 20,
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                    Text(
                                      "Age of Tyre: ${snapshot.data!.docs[index].data()['Age of Tyre']}",
                                      style: GoogleFonts.roboto(
                                        color: Colors.white,
                                        fontSize: 20,
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                    Image.network(snapshot.data!.docs[index]
                                        .data()['Image'])
                                  ],
                                )),
                      );
                    },
                  )
                ],
              )),
          const BottomNavigations(bottomNavigationIndex: 5),
        ],
      ),
    );
  }
}
