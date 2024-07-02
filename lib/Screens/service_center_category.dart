import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../Widgets/bottom_navigation.dart';

class ServiceCenterCategoryPage extends StatelessWidget {
  const ServiceCenterCategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(color: CupertinoColors.darkBackgroundGray),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),

            child: Column(
              children: [
                const Text(
                  "Select a Category",
                  style: TextStyle(
                      fontSize: 40,
                      decoration: TextDecoration.none,
                      color: CupertinoColors.white),
                ),
                SizedBox(
                  height: 300,    
                  width: double.infinity,
                  child: GridView.count(
                    crossAxisCount: 2,
                    
                    children: [
                      Container(
                        height: 276,
                        width: 170,
                        color: Colors.white,
                      ),
                      Container(
                        height: 276,
                        width: 170,
                        color: Colors.white,
                      ),
                      Container(
                        height: 276,
                        width: 170,
                        color: Colors.white,
                      ),
                      Container(
                        height: 276,
                        width: 170,
                        color: Colors.white,
                      ),
                      Container(
                        height: 276,
                        width: 170,
                        color: Colors.white,
                      ),
                      Container(
                        height: 276,
                        width: 170,
                        color: Colors.white,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const BottomNavigations(bottomNavigationIndex: 2),
        ],
      ),
    );
    
  }
}
