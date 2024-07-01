import 'package:flutter/cupertino.dart';

class ServiceCenterPage extends StatelessWidget {
  const ServiceCenterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Service Center ",
                    style: TextStyle(
                        fontSize: 40,
                        decoration: TextDecoration.none,
                        color: CupertinoColors.white)),
                Center(child: Icon(CupertinoIcons.car_detailed, color: CupertinoColors.white, size: 200)),
                SizedBox(height: 20),
                Text("Details",
                    style: TextStyle(
                        fontSize: 20,
                        decoration: TextDecoration.none,
                        color: CupertinoColors.white)),
              ],
            ),
            Container(
              alignment: Alignment.bottomCenter,
              height: 50,
              width: 320,
              margin: const EdgeInsets.only(top: 20, left: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: const Color(0xFFA70018),
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 2,
                      color: Color(0xFF540000),
                      offset: Offset(0, 4),
                      spreadRadius: 2,
                    )
                  ]),
              child: const Center(
                child: Text(
                  "Edit Car Details",
                  style: TextStyle(
                    color: CupertinoColors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
