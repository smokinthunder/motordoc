import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:motor_doc/Models/vehicle.dart';

import '../Widgets/bottom_navigation.dart'; // Importing bottom navigation

class AddVehicle extends StatefulWidget {
  const AddVehicle({super.key});

  @override
  State<AddVehicle> createState() => _AddVehicleState();
}

class _AddVehicleState extends State<AddVehicle> {
  final TextEditingController _vehicleNameController = TextEditingController();
  final TextEditingController _vehicleNumberController = TextEditingController();
  final TextEditingController _ageOfTyreController = TextEditingController();
  final TextEditingController _ageOfVehicleController = TextEditingController();
  String? vehicleImageUrl;
  bool isUploading = false;

  final picker = ImagePicker();

  Future<void> pickImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    
    if (pickedFile != null) {
      File image = File(pickedFile.path);
      uploadImage(image);
    }
  }

  Future<void> uploadImage(File image) async {
    setState(() {
      isUploading = true;
    });
    try {
      FirebaseStorage storage = FirebaseStorage.instance;
      Reference ref = storage.ref().child('images/${DateTime.now().toString()}');
      UploadTask uploadTask = ref.putFile(image);
      await uploadTask.whenComplete(() => print('Upload Complete'));
      String downloadURL = await ref.getDownloadURL();
      setState(() {
        vehicleImageUrl = downloadURL;
      });
    } catch (e) {
      print('Error: $e');
    } finally {
      setState(() {
        isUploading = false;
      });
    }
  }

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
            margin: const EdgeInsets.only(top: 20), // Adjust margin to create separation
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'Add Vehicle Details',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: _vehicleNameController,
                  style: const TextStyle(
                      color: Colors.white), // Change text color here
                  decoration: const InputDecoration(
                    labelText: 'Vehicle Name',
                    labelStyle: TextStyle(
                        color: Colors.white), // Optional: customize label color
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  controller: _vehicleNumberController,
                  style: const TextStyle(
                      color: Colors.white), // Change text color here
                  decoration: const InputDecoration(
                    labelText: 'Vehicle Number',
                    labelStyle: TextStyle(
                        color: Colors.white), // Optional: customize label color
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  controller: _ageOfTyreController,
                  style: const TextStyle(
                      color: Colors.white), // Change text color here
                  decoration: const InputDecoration(
                    labelText: 'Age of Tyre',
                    labelStyle: TextStyle(
                        color: Colors.white), // Optional: customize label color
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  controller: _ageOfVehicleController,
                  style: const TextStyle(
                      color: Colors.white), // Change text color here
                  decoration: const InputDecoration(
                    labelText: 'Age of Vehicle',
                    labelStyle: TextStyle(
                        color: Colors.white), // Optional: customize label color
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),
                IconButton(
                  onPressed: pickImage,
                  icon: const Icon(
                    Icons.camera_alt_outlined,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Handle form submission

                    Vehicle(
                      vehicleName: _vehicleNameController.text,
                      vehicleNumber: _vehicleNumberController.text,
                      ageOfTyre: _ageOfTyreController.text,
                      ageOfVehicle: _ageOfVehicleController.text,
                      vehicleImageUrl: vehicleImageUrl ?? '',
                    );
                    Navigator.pushNamed(context, '/home');
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.red), // Change button color here
                  ),
                  child: const Text(
                    'Submit',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                if (isUploading)
                  const SizedBox( width: 50, height: 50, child: CircularProgressIndicator()),
                if (vehicleImageUrl != null)
                  Image.network(vehicleImageUrl!),
              ],
            ),
          ),
          const Positioned(
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
