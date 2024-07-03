import 'package:flutter/cupertino.dart';

class ServiceCenterPage extends StatelessWidget {
  final String? name;
  final String? place;
  final String? phone;
  final List? services;
  const ServiceCenterPage({super.key, required this.name, required this.place, required this.phone, required this.services});

  @override
  Widget build(BuildContext context) {
    return  CupertinoPageScaffold(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Service Center ",
                    style: TextStyle(
                        fontSize: 40,
                        decoration: TextDecoration.none,
                        color: CupertinoColors.white)),
                const Center(
                    child: Icon(CupertinoIcons.car_detailed,
                        color: CupertinoColors.white, size: 200)),
                const SizedBox(height: 20),
                const Text(
                  "Details",
                  style: TextStyle(
                      fontSize: 20,
                      decoration: TextDecoration.none,
                      color: CupertinoColors.white),
                ),
                const SizedBox(height: 20),
                const SizedBox(height: 20),
                Text(
                  "Name: $name",
                  style: const TextStyle(
                    fontSize: 20,
                    decoration: TextDecoration.none,
                    color: CupertinoColors.white,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  "Place: $place",
                  style: const TextStyle(
                    fontSize: 20,
                    decoration: TextDecoration.none,
                    color: CupertinoColors.white,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  "Phone:   $phone",
                  style: const TextStyle(
                    fontSize: 20,
                    decoration: TextDecoration.none,
                    color: CupertinoColors.white,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  "Services: ${services?.join(', ')}",
                  style: const TextStyle(
                    fontSize: 20,
                    decoration: TextDecoration.none,
                    color: CupertinoColors.white,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
