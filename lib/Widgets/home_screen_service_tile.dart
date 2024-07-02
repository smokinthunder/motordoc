import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../themes/colors.dart';

class ServiceTile extends StatelessWidget {
  final String rating;
  final String headtext;
  final String subtext;

  const ServiceTile({super.key, required this.rating, required this.headtext, required this.subtext});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/serviceCentre');
      },
      child: Container(
        margin: const EdgeInsets.only(right: 20),
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
                    color: CupertinoColors.white,
                  ),
                  height: 25,
                  width: 51,
                  child:  Center(
                    child: Row(
                      children: [
                        const Icon(
                          CupertinoIcons.star,
                          color: Color(0xFFFBBE21),
                          size: 15,
                        ),
                        Text(
                          rating,
                          style: const TextStyle(
                            color: CupertinoColors.black,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            const Icon(
              CupertinoIcons.car_detailed,
              size: 100,
              color: CupertinoColors.white,
            ),
             Text(
              headtext,
              style: const TextStyle(
                color: CupertinoColors.white,
                fontSize: 20,
              ),
            ),
             Text(
              subtext,
              style: const TextStyle(
                color: CupertinoColors.white,
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
