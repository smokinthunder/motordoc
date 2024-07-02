import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Vehicle {
  String vehicleName;
  String vehicleNumber;
  String ageOfTyre;
  String ageOfVehicle;
  String vehicleImageUrl;

  Vehicle(
      {required this.vehicleName,
      required this.vehicleNumber,
      required this.ageOfTyre,
      required this.vehicleImageUrl,
      required this.ageOfVehicle}) {
    FirebaseFirestore.instance.collection('Vehicle').add({
      'Image': vehicleImageUrl,
      'Vehicle Name': vehicleName,
      'Vehicle Number': vehicleNumber,
      'Age of Tyre': ageOfTyre,
      'Age of Vehicle': ageOfVehicle,
      'Owner': FirebaseAuth.instance.currentUser!.uid,
    });
  }
}
