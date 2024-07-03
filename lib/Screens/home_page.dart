import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:swipe_cards/swipe_cards.dart';
import 'package:motor_doc/Widgets/home_screen_service_tile.dart';
import '../Widgets/bottom_navigation.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
                
                StreamBuilder(stream: FirebaseFirestore.instance
                        .collection('Vehicle').where('Owner', isEqualTo: FirebaseAuth.instance.currentUser!.uid)
                        .snapshots() , builder: 
                        (context,
                        AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>>
                        snapshot) {

                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                      if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                        return const Text('No Service Centers found', style: TextStyle(color: Colors.white));
                      }
                      return SizedBox(
                        height: 150,
                        child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/carDetails');
                  },
                  child: Container(
                    height: 150,
                    margin: const EdgeInsets.only(top: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: 
                    Image.network(snapshot.data!.docs[0].data()['Image'], fit: BoxFit.cover,),
                  ),
                ),
                      );}
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
                        .collection('Service Centers')
                        .orderBy('Rating', descending: true)
                        .limit(20)
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
                            rating: snapshot.data!.docs[index]
                                .data()['Rating']
                                .toString(),
                            headtext:
                            snapshot.data!.docs[index].data()['Name'],
                            subtext:
                            snapshot.data!.docs[index].data()['Place'],
                          ),
                        ),
                      );
                    }),
                const SizedBox(
                  height: 20,
                ),
                const Center(
                  child: Text(
                    "Chart",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),

                Image.asset('assets/chart.png', fit: BoxFit.cover, height: 150, width: 150,),
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