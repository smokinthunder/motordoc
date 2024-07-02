import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../Widgets/bottom_navigation.dart';

class ServiceCenterCategoryPage extends StatelessWidget {
  final List<String> imagePaths = [
    'assets/images/spa.png',
    'assets/images/spa.png',
    'assets/images/spa.png',
    'assets/images/spa.png',
    'assets/images/spa.png',
    'assets/images/spa.png',
  ];

  final List<String> imageDescriptions = [
    'Maintenance',
    'Repair',
    'Washing',
    'Inspection',
    'Tire Service',
    'Oil Change',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(color: Color(0xff191C32),),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const SizedBox(height: 60), // Add vertical space before the text
                const Text(
                  "Select a Category",
                  style: TextStyle(
                    fontSize: 35,
                    decoration: TextDecoration.none,
                    color: CupertinoColors.white,
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: GridView.builder(
                      padding: const EdgeInsets.only(top: 30.0),
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 8.0,
                        mainAxisSpacing: 16.0,
                        childAspectRatio: 1.0, // Ensure square-shaped grid items
                      ),
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: imagePaths.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Container(
                              height: 120,
                              margin: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(16.0),
                                child: Image.asset(
                                  imagePaths[index],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Text(
                              imageDescriptions[index],
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          const BottomNavigations(bottomNavigationIndex: 2),
        ],
      ),
    );
  }
}
