import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class BottomNavigations extends StatelessWidget {
  final int bottomNavigationIndex;
  const BottomNavigations({super.key, required this.bottomNavigationIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: const EdgeInsets.only(top: 20, bottom: 10),
        color: CupertinoColors.black,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/home');
              },
              child: Icon(
                
                bottomNavigationIndex == 1
                    ? CupertinoIcons.house_fill
                    : CupertinoIcons.house,
                color: Colors.white,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/serviceCenterCategoryPage');
              },
              child: Icon(
                bottomNavigationIndex == 2
                    ? CupertinoIcons.wrench_fill
                    : CupertinoIcons.wrench,
                color: Colors.white,
              ),
            ),

            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/addvehicle');
              },
              child: Icon(
                bottomNavigationIndex == 3
                    ? CupertinoIcons.plus_rectangle_fill
                    : CupertinoIcons.plus_rectangle,
                color: Colors.white,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/trip');
              },
              child: Icon(
                bottomNavigationIndex == 4
                    ? CupertinoIcons.location_fill
                    : CupertinoIcons.location,
                color: Colors.white,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/profile');
              },
              child: Icon(
                bottomNavigationIndex == 5
                    ? CupertinoIcons.person_circle_fill
                    : CupertinoIcons.person_circle,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
