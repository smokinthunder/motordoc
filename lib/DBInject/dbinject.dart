// import 'package:cloud_firestore/cloud_firestore.dart';

// void dbinject() {
//   List<Map<String, dynamic>> datas = [
//   {
//     "ID": 1,
//     "Name": "Speedy Service Center",
//     "Place": "Trivandrum",
//     "Rating": 4.5,
//     "Contact Number": "+91 9876543210",
//     "Category": ["Puncher", "Mechanic", "Water wash"]
//   },
//   {
//     "ID": 2,
//     "Name": "Green Motors",
//     "Place": "Kochi",
//     "Rating": 4.2,
//     "Contact Number": "+91 8765432109",
//     "Category": ["Mechanic", "Spare parts"]
//   },
//   {
//     "ID": 3,
//     "Name": "Perfect Motors",
//     "Place": "Kottayam",
//     "Rating": 4.7,
//     "Contact Number": "+91 7654321098",
//     "Category": ["Modification", "Emmission"]
//   },
//   {
//     "ID": 4,
//     "Name": "Sunshine Autos",
//     "Place": "Calicut",
//     "Rating": 4.0,
//     "Contact Number": "+91 6543210987",
//     "Category": ["Showroom"]
//   },
//   {
//     "ID": 5,
//     "Name": "Happy Wheels",
//     "Place": "Palakkad",
//     "Rating": 4.3,
//     "Contact Number": "+91 5432109876",
//     "Category": ["Puncher", "Water wash"]
//   },
//   {
//     "ID": 6,
//     "Name": "City Motors",
//     "Place": "Thrissur",
//     "Rating": 4.6,
//     "Contact Number": "+91 4321098765",
//     "Category": ["Mechanic", "Spare parts"]
//   },
//   {
//     "ID": 7,
//     "Name": "Speed Motors",
//     "Place": "Alappuzha",
//     "Rating": 4.4,
//     "Contact Number": "+91 3210987654",
//     "Category": ["Mechanic", "Modification"]
//   },
//   {
//     "ID": 8,
//     "Name": "Royal Autos",
//     "Place": "Malappuram",
//     "Rating": 4.8,
//     "Contact Number": "+91 2109876543",
//     "Category": ["Emmission", "Showroom"]
//   },
//   {
//     "ID": 9,
//     "Name": "Golden Motors",
//     "Place": "Idukki",
//     "Rating": 4.1,
//     "Contact Number": "+91 1098765432",
//     "Category": ["Spare parts", "Modification"]
//   },
//   {
//     "ID": 10,
//     "Name": "Classic Cars",
//     "Place": "Pathanamthitta",
//     "Rating": 4.9,
//     "Contact Number": "+91 9876543210",
//     "Category": ["Puncher", "Water wash", "Emmission"]
//   },
//   {
//     "ID": 11,
//     "Name": "Silver Motors",
//     "Place": "Ernakulam",
//     "Rating": 4.5,
//     "Contact Number": "+91 8765432109",
//     "Category": ["Mechanic", "Showroom"]
//   },
//   {
//     "ID": 12,
//     "Name": "Fast Track Autos",
//     "Place": "Thiruvananthapuram",
//     "Rating": 4.3,
//     "Contact Number": "+91 7654321098",
//     "Category": ["Puncher", "Spare parts"]
//   },
//   {
//     "ID": 13,
//     "Name": "Quick Service Center",
//     "Place": "Kochi",
//     "Rating": 4.2,
//     "Contact Number": "+91 6543210987",
//     "Category": ["Mechanic", "Modification"]
//   },
//   {
//     "ID": 14,
//     "Name": "City Motors",
//     "Place": "Kottayam",
//     "Rating": 4.7,
//     "Contact Number": "+91 5432109876",
//     "Category": ["Water wash", "Emmission"]
//   },
//   {
//     "ID": 15,
//     "Name": "Sunrise Autos",
//     "Place": "Calicut",
//     "Rating": 4.0,
//     "Contact Number": "+91 4321098765",
//     "Category": ["Puncher", "Showroom"]
//   },
//   {
//     "ID": 16,
//     "Name": "Green Wheels",
//     "Place": "Palakkad",
//     "Rating": 4.3,
//     "Contact Number": "+91 3210987654",
//     "Category": ["Mechanic", "Spare parts"]
//   },
//   {
//     "ID": 17,
//     "Name": "Speedy Motors",
//     "Place": "Thrissur",
//     "Rating": 4.6,
//     "Contact Number": "+91 2109876543",
//     "Category": ["Modification", "Emmission"]
//   },
//   {
//     "ID": 18,
//     "Name": "Metro Motors",
//     "Place": "Alappuzha",
//     "Rating": 4.4,
//     "Contact Number": "+91 1098765432",
//     "Category": ["Water wash", "Showroom"]
//   },
//   {
//     "ID": 19,
//     "Name": "Milestone Motors",
//     "Place": "Malappuram",
//     "Rating": 4.8,
//     "Contact Number": "+91 9876543210",
//     "Category": ["Puncher", "Spare parts", "Modification"]
//   },
//   {
//     "ID": 20,
//     "Name": "Victory Autos",
//     "Place": "Idukki",
//     "Rating": 4.1,
//     "Contact Number": "+91 8765432109",
//     "Category": ["Mechanic", "Emmission"]
//   },
//   {
//     "ID": 21,
//     "Name": "Happy Motors",
//     "Place": "Pathanamthitta",
//     "Rating": 4.9,
//     "Contact Number": "+91 7654321098",
//     "Category": ["Modification", "Showroom"]
//   },
//   {
//     "ID": 22,
//     "Name": "Golden Wheels",
//     "Place": "Ernakulam",
//     "Rating": 4.5,
//     "Contact Number": "+91 6543210987",
//     "Category": ["Puncher", "Water wash"]
//   },
//   {
//     "ID": 23,
//     "Name": "Quick Fix Autos",
//     "Place": "Thiruvananthapuram",
//     "Rating": 4.3,
//     "Contact Number": "+91 5432109876",
//     "Category": ["Mechanic", "Spare parts"]
//   },
//   {
//     "ID": 24,
//     "Name": "City Service Center",
//     "Place": "Kochi",
//     "Rating": 4.2,
//     "Contact Number": "+91 3210987654",
//     "Category": ["Modification", "Emmission"]
//   },
//   {
//     "ID": 25,
//     "Name": "Sunset Autos",
//     "Place": "Kottayam",
//     "Rating": 4.7,
//     "Contact Number": "+91 1098765432",
//     "Category": ["Water wash", "Showroom"]
//   },
//   {
//     "ID": 26,
//     "Name": "Green Motors",
//     "Place": "Calicut",
//     "Rating": 4.0,
//     "Contact Number": "+91 9876543210",
//     "Category": ["Puncher", "Spare parts"]
//   },
//   {
//     "ID": 27,
//     "Name": "Speedy Wheels",
//     "Place": "Palakkad",
//     "Rating": 4.3,
//     "Contact Number": "+91 8765432109",
//     "Category": ["Mechanic", "Modification"]
//   },
//   {
//     "ID": 28,
//     "Name": "Quick Service Center",
//     "Place": "Thrissur",
//     "Rating": 4.6,
//     "Contact Number": "+91 7654321098",
//     "Category": ["Emmission", "Showroom"]
//   },
//   {
//     "ID": 29,
//     "Name": "Metro Autos",
//     "Place": "Alappuzha",
//     "Rating": 4.4,
//     "Contact Number": "+91 6543210987",
//     "Category": ["Puncher", "Water wash", "Spare parts"]
//   },
//   {
//     "ID": 30,
//     "Name": "Speed Motors",
//     "Place": "Malappuram",
//     "Rating": 4.8,
//     "Contact Number": "+91 5432109876",
//     "Category": ["Mechanic", "Modification", "Emmission"]
//   },
//   {
//     "ID": 31,
//     "Name": "Royal Autos",
//     "Place": "Idukki",
//     "Rating": 4.1,
//     "Contact Number": "+91 3210987654",
//     "Category": ["Water wash", "Showroom"]
//   },
//   {
//     "ID": 32,
//     "Name": "Golden Motors",
//     "Place": "Pathanamthitta",
//     "Rating": 4.9,
//     "Contact Number": "+91 1098765432",
//     "Category": ["Puncher", "Spare parts", "Modification"]
//   },
//   {
//     "ID": 33,
//     "Name": "Classic Autos",
//     "Place": "Ernakulam",
//     "Rating": 4.5,
//     "Contact Number": "+91 9876543210",
//     "Category": ["Mechanic", "Emmission"]
//   },
//   {
//     "ID": 34,
//     "Name": "City Wheels",
//     "Place": "Thiruvananthapuram",
//     "Rating": 4.3,
//     "Contact Number": "+91 8765432109",
//     "Category": ["Modification", "Showroom"]
//   },
//   {
//     "ID": 35,
//     "Name": "Silver Service Center",
//     "Place": "Kochi",
//     "Rating": 4.2,
//     "Contact Number": "+91 7654321098",
//     "Category": ["Puncher", "Water wash"]
//   },
//   {
//     "ID": 36,
//     "Name": "Speedy Motors",
//     "Place": "Kottayam",
//     "Rating": 4.7,
//     "Contact Number": "+91 5432109876",
//     "Category": ["Mechanic", "Spare parts"]
//   },
//   {
//     "ID": 37,
//     "Name": "Quick Fix Autos",
//     "Place": "Calicut",
//     "Rating": 4.0,
//     "Contact Number": "+91 3210987654",
//     "Category": ["Modification", "Emmission"]
//   },
//   {
//     "ID": 38,
//     "Name": "City Service Center",
//     "Place": "Palakkad",
//     "Rating": 4.3,
//     "Contact Number": "+91 1098765432",
//     "Category": ["Water wash", "Showroom"]
//   },
//   {
//     "ID": 39,
//     "Name": "Sunset Autos",
//     "Place": "Thrissur",
//     "Rating": 4.6,
//     "Contact Number": "+91 9876543210",
//     "Category": ["Puncher", "Spare parts", "Modification"]
//   },
//   {
//     "ID": 40,
//     "Name": "Green Motors",
//     "Place": "Alappuzha",
//     "Rating": 4.4,
//     "Contact Number": "+91 8765432109",
//     "Category": ["Mechanic", "Emmission"]
//   },
//   {
//     "ID": 41,
//     "Name": "Speedy Wheels",
//     "Place": "Malappuram",
//     "Rating": 4.8,
//     "Contact Number": "+91 6543210987",
//     "Category": ["Water wash", "Showroom"]
//   },
//   {
//     "ID": 42,
//     "Name": "Quick Fix Autos",
//     "Place": "Idukki",
//     "Rating": 4.1,
//     "Contact Number": "+91 5432109876",
//     "Category": ["Puncher", "Spare parts", "Modification"]
//   },
//   {
//     "ID": 43,
//     "Name": "City Service Center",
//     "Place": "Pathanamthitta",
//     "Rating": 4.9,
//     "Contact Number": "+91 3210987654",
//     "Category": ["Mechanic", "Emmission"]
//   },
//   {
//     "ID": 44,
//     "Name": "Sunrise Autos",
//     "Place": "Ernakulam",
//     "Rating": 4.5,
//     "Contact Number": "+91 1098765432",
//     "Category": ["Modification", "Showroom"]
//   },
//   {
//     "ID": 45,
//     "Name": "Green Motors",
//     "Place": "Thiruvananthapuram",
//     "Rating": 4.3,
//     "Contact Number": "+91 9876543210",
//     "Category": ["Puncher", "Water wash"]
//   },
//   {
//     "ID": 46,
//     "Name": "Speedy Wheels",
//     "Place": "Kochi",
//     "Rating": 4.2,
//     "Contact Number": "+91 8765432109",
//     "Category": ["Mechanic", "Spare parts"]
//   },
//   {
//     "ID": 47,
//     "Name": "Quick Service Center",
//     "Place": "Kottayam",
//     "Rating": 4.7,
//     "Contact Number": "+91 7654321098",
//     "Category": ["Modification", "Emmission"]
//   },
//   {
//     "ID": 48,
//     "Name": "Metro Autos",
//     "Place": "Calicut",
//     "Rating": 4.0,
//     "Contact Number": "+91 3210987654",
//     "Category": ["Water wash", "Showroom"]
//   },
//   {
//     "ID": 49,
//     "Name": "Speed Motors",
//     "Place": "Palakkad",
//     "Rating": 4.3,
//     "Contact Number": "+91 1098765432",
//     "Category": ["Puncher", "Spare parts", "Modification"]
//   },
//   {
//     "ID": 50,
//     "Name": "Royal Autos",
//     "Place": "Thrissur",
//     "Rating": 4.6,
//     "Contact Number": "+91 9876543210",
//     "Category": ["Mechanic", "Emmission"]
//   },
//   {
//     "ID": 51,
//     "Name": "Golden Motors",
//     "Place": "Alappuzha",
//     "Rating": 4.4,
//     "Contact Number": "+91 8765432109",
//     "Category": ["Water wash", "Showroom"]
//   },
//   {
//     "ID": 52,
//     "Name": "Happy Motors",
//     "Place": "Malappuram",
//     "Rating": 4.8,
//     "Contact Number": "+91 6543210987",
//     "Category": ["Puncher", "Spare parts", "Modification"]
//   },
//   {
//     "ID": 53,
//     "Name": "Golden Wheels",
//     "Place": "Idukki",
//     "Rating": 4.1,
//     "Contact Number": "+91 5432109876",
//     "Category": ["Mechanic", "Emmission"]
//   },
//   {
//     "ID": 54,
//     "Name": "Quick Fix Autos",
//     "Place": "Pathanamthitta",
//     "Rating": 4.9,
//     "Contact Number": "+91 3210987654",
//     "Category": ["Modification", "Showroom"]
//   },
//   {
//     "ID": 55,
//     "Name": "City Service Center",
//     "Place": "Ernakulam",
//     "Rating": 4.5,
//     "Contact Number": "+91 1098765432",
//     "Category": ["Puncher", "Water wash"]
//   },
//   {
//     "ID": 56,
//     "Name": "Sunset Autos",
//     "Place": "Thiruvananthapuram",
//     "Rating": 4.3,
//     "Contact Number": "+91 9876543210",
//     "Category": ["Mechanic", "Spare parts"]
//   },
//   {
//     "ID": 57,
//     "Name": "Green Motors",
//     "Place": "Kochi",
//     "Rating": 4.2,
//     "Contact Number": "+91 8765432109",
//     "Category": ["Modification", "Emmission"]
//   },
//   {
//     "ID": 58,
//     "Name": "Speedy Wheels",
//     "Place": "Kottayam",
//     "Rating": 4.7,
//     "Contact Number": "+91 7654321098",
//     "Category": ["Water wash", "Showroom"]
//   },
//   {
//     "ID": 59,
//     "Name": "Quick Fix Autos",
//     "Place": "Calicut",
//     "Rating": 4.0,
//     "Contact Number": "+91 3210987654",
//     "Category": ["Puncher", "Spare parts", "Modification"]
//   },
//   {
//     "ID": 60,
//     "Name": "City Service Center",
//     "Place": "Palakkad",
//     "Rating": 4.3,
//     "Contact Number": "+91 1098765432",
//     "Category": ["Mechanic", "Emmission"]
//   },
//   {
//     "ID": 61,
//     "Name": "Sunrise Autos",
//     "Place": "Thrissur",
//     "Rating": 4.6,
//     "Contact Number": "+91 9876543210",
//     "Category": ["Modification", "Showroom"]
//   },
//   {
//     "ID": 62,
//     "Name": "Green Motors",
//     "Place": "Alappuzha",
//     "Rating": 4.4,
//     "Contact Number": "+91 8765432109",
//     "Category": ["Puncher", "Water wash"]
//   },
//   {
//     "ID": 63,
//     "Name": "Speedy Wheels",
//     "Place": "Malappuram",
//     "Rating": 4.8,
//     "Contact Number": "+91 6543210987",
//     "Category": ["Mechanic", "Spare parts"]
//   },
//   {
//     "ID": 64,
//     "Name": "Quick Fix Autos",
//     "Place": "Idukki",
//     "Rating": 4.1,
//     "Contact Number": "+91 5432109876",
//     "Category": ["Modification", "Emmission"]
//   },
//   {
//     "ID": 65,
//     "Name": "City Service Center",
//     "Place": "Pathanamthitta",
//     "Rating": 4.9,
//     "Contact Number": "+91 3210987654",
//     "Category": ["Water wash", "Showroom"]
//   },
//   {
//     "ID": 66,
//     "Name": "Sunset Autos",
//     "Place": "Ernakulam",
//     "Rating": 4.5,
//     "Contact Number": "+91 1098765432",
//     "Category": ["Puncher", "Spare parts", "Modification"]
//   },
//   {
//     "ID": 67,
//     "Name": "Green Motors",
//     "Place": "Thiruvananthapuram",
//     "Rating": 4.3,
//     "Contact Number": "+91 9876543210",
//     "Category": ["Mechanic", "Emmission"]
//   },
//   {
//     "ID": 68,
//     "Name": "Speedy Wheels",
//     "Place": "Kochi",
//     "Rating": 4.2,
//     "Contact Number": "+91 8765432109",
//     "Category": ["Water wash", "Showroom"]
//   },
//   {
//     "ID": 69,
//     "Name": "Quick Fix Autos",
//     "Place": "Kottayam",
//     "Rating": 4.7,
//     "Contact Number": "+91 7654321098",
//     "Category": ["Puncher", "Spare parts", "Modification"]
//   },
//   {
//     "ID": 70,
//     "Name": "City Service Center",
//     "Place": "Calicut",
//     "Rating": 4.0,
//     "Contact Number": "+91 3210987654",
//     "Category": ["Mechanic", "Emmission"]
//   },
//   {
//     "ID": 71,
//     "Name": "Sunrise Autos",
//     "Place": "Palakkad",
//     "Rating": 4.3,
//     "Contact Number": "+91 1098765432",
//     "Category": ["Water wash", "Showroom"]
//   },
//   {
//     "ID": 72,
//     "Name": "Green Motors",
//     "Place": "Thrissur",
//     "Rating": 4.6,
//     "Contact Number": "+91 9876543210",
//     "Category": ["Puncher", "Spare parts", "Modification"]
//   },
//   {
//     "ID": 73,
//     "Name": "Speedy Wheels",
//     "Place": "Alappuzha",
//     "Rating": 4.4,
//     "Contact Number": "+91 8765432109",
//     "Category": ["Mechanic", "Emmission"]
//   },
//   {
//     "ID": 74,
//     "Name": "Quick Fix Autos",
//     "Place": "Malappuram",
//     "Rating": 4.8,
//     "Contact Number": "+91 6543210987",
//     "Category": ["Water wash", "Showroom"]
//   },
//   {
//     "ID": 75,
//     "Name": "City Service Center",
//     "Place": "Idukki",
//     "Rating": 4.1,
//     "Contact Number": "+91 5432109876",
//     "Category": ["Puncher", "Spare parts", "Modification"]
//   },
//   {
//     "ID": 76,
//     "Name": "Sunset Autos",
//     "Place": "Pathanamthitta",
//     "Rating": 4.9,
//     "Contact Number": "+91 3210987654",
//     "Category": ["Mechanic", "Emmission"]
//   },
//   {
//     "ID": 77,
//     "Name": "Green Motors",
//     "Place": "Ernakulam",
//     "Rating": 4.5,
//     "Contact Number": "+91 1098765432",
//     "Category": ["Modification", "Showroom"]
//   },
//   {
//     "ID": 78,
//     "Name": "Speedy Wheels",
//     "Place": "Thiruvananthapuram",
//     "Rating": 4.3,
//     "Contact Number": "+91 9876543210",
//     "Category": ["Puncher", "Water wash"]
//   },
//   {
//     "ID": 79,
//     "Name": "Quick Fix Autos",
//     "Place": "Kochi",
//     "Rating": 4.2,
//     "Contact Number": "+91 8765432109",
//     "Category": ["Mechanic", "Spare parts"]
//   },
//   {
//     "ID": 80,
//     "Name": "City Service Center",
//     "Place": "Kottayam",
//     "Rating": 4.7,
//     "Contact Number": "+91 7654321098",
//     "Category": ["Modification", "Emmission"]
//   },
//   {
//     "ID": 81,
//     "Name": "Sunrise Autos",
//     "Place": "Calicut",
//     "Rating": 4.0,
//     "Contact Number": "+91 3210987654",
//     "Category": ["Water wash", "Showroom"]
//   },
//   {
//     "ID": 82,
//     "Name": "Green Motors",
//     "Place": "Palakkad",
//     "Rating": 4.3,
//     "Contact Number": "+91 1098765432",
//     "Category": ["Puncher", "Spare parts", "Modification"]
//   },
//   {
//     "ID": 83,
//     "Name": "Speedy Wheels",
//     "Place": "Thrissur",
//     "Rating": 4.6,
//     "Contact Number": "+91 9876543210",
//     "Category": ["Mechanic", "Emmission"]
//   },
//   {
//     "ID": 84,
//     "Name": "Quick Fix Autos",
//     "Place": "Alappuzha",
//     "Rating": 4.4,
//     "Contact Number": "+91 8765432109",
//     "Category": ["Water wash", "Showroom"]
//   },
//   {
//     "ID": 85,
//     "Name": "City Service Center",
//     "Place": "Malappuram",
//     "Rating": 4.8,
//     "Contact Number": "+91 6543210987",
//     "Category": ["Puncher", "Spare parts", "Modification"]
//   },
//   {
//     "ID": 86,
//     "Name": "Sunset Autos",
//     "Place": "Idukki",
//     "Rating": 4.1,
//     "Contact Number": "+91 5432109876",
//     "Category": ["Mechanic", "Emmission"]
//   },
//   {
//     "ID": 87,
//     "Name": "Green Motors",
//     "Place": "Pathanamthitta",
//     "Rating": 4.9,
//     "Contact Number": "+91 3210987654",
//     "Category": ["Modification", "Showroom"]
//   },
//   {
//     "ID": 88,
//     "Name": "Speedy Wheels",
//     "Place": "Ernakulam",
//     "Rating": 4.5,
//     "Contact Number": "+91 1098765432",
//     "Category": ["Puncher", "Water wash"]
//   },
//   {
//     "ID": 89,
//     "Name": "Quick Fix Autos",
//     "Place": "Thiruvananthapuram",
//     "Rating": 4.3,
//     "Contact Number": "+91 9876543210",
//     "Category": ["Mechanic", "Spare parts"]
//   },
//   {
//     "ID": 90,
//     "Name": "City Service Center",
//     "Place": "Kochi",
//     "Rating": 4.2,
//     "Contact Number": "+91 8765432109",
//     "Category": ["Modification", "Emmission"]
//   }
// ]
// ;

// for (var data in datas) { 
//   FirebaseFirestore.instance.collection('Service Centers').doc(data['ID'].toString()).set(data);

// }
// }
