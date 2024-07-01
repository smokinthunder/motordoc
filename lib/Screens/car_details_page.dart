import 'package:flutter/cupertino.dart';

class CarDetailsPage extends StatelessWidget {
  const CarDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Car ",
                    style: TextStyle(
                        fontSize: 40,
                        decoration: TextDecoration.none,
                        color: CupertinoColors.white)),
                Container(
                  height: 150,
                  margin: const EdgeInsets.only(top: 30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: CupertinoColors.white,
                  ),
                  child: Image.asset("assets/figma_imports/home/car.png"),
                ),
                const SizedBox(height: 20),
                const Text("Details",
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
