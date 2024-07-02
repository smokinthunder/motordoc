import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../Widgets/bottom_navigation.dart'; // Importing bottom navigation

class AddVehicle extends StatelessWidget {
  const AddVehicle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff000912), // Replace with your desired color
      appBar: AppBar(
        backgroundColor: Colors.transparent, // Make app bar transparent
        elevation: 0, // Remove app bar elevation
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Color(0xff1E1F27),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            margin: EdgeInsets.only(top: 20), // Adjust margin to create separation
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Add Vehicle Details',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                TextFormField(
                  style: TextStyle(color: Colors.white), // Change text color here
                  decoration: InputDecoration(
                    labelText: 'Vehicle Name',
                    labelStyle: TextStyle(color: Colors.white), // Optional: customize label color
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  style: TextStyle(color: Colors.white), // Change text color here
                  decoration: InputDecoration(
                    labelText: 'Vehicle Number',
                    labelStyle: TextStyle(color: Colors.white), // Optional: customize label color
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  style: TextStyle(color: Colors.white), // Change text color here
                  decoration: InputDecoration(
                    labelText: 'Age of Tyre',
                    labelStyle: TextStyle(color: Colors.white), // Optional: customize label color
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  style: TextStyle(color: Colors.white), // Change text color here
                  decoration: InputDecoration(
                    labelText: 'Oil Change Date',
                    labelStyle: TextStyle(color: Colors.white), // Optional: customize label color
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Handle form submission
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.red), // Change button color here
                  ),
                  child: Text(
                      'Submit',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: BottomNavigations(bottomNavigationIndex: 3),
          ),
        ],
      ),
    );
  }
}
