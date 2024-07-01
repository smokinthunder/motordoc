import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Widgets/bottom_navigation.dart';
import '../themes/colors.dart';

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
                    child: Image.asset("assets/figma_imports/home/car.png"),
                    margin: const EdgeInsets.only(top: 30),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
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
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/serviceCentre');
                      },
                      child: Container(
                        width: 150,
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: C.darkGreyBox,
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10),
                                    ),
                                    color: Colors.white,
                                  ),
                                  height: 25,
                                  width: 51,
                                  child: const Center(
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Color(0xFFFBBE21),
                                          size: 15,
                                        ),
                                        Text(
                                          "4.5",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const Icon(
                              CupertinoIcons.car_detailed,
                              size: 100,
                              color: Colors.white,
                            ),
                            const Text(
                              "Car Service",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                            const Text(
                              "Service your car",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const Center(
                  child: Text(
                    "Chart",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
                Container()
              ],
            ),
          ),
          const BottomNavigations(bottomNavigationIndex: 1),
        ],
      ),
    );
  }
}
