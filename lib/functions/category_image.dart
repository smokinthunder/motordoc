import 'package:flutter/cupertino.dart';

class CategoryImage{
  static Image getImage(String category){
    switch(category){
      case 'Puncher':
        return Image.asset('assets/categories/image1.png');
      case 'Mechanic':
        return Image.asset('assets/categories/image2.png');
      case 'Water Wash':
        return Image.asset('assets/categories/image3.png');
      case 'Spare Parts':
        return Image.asset('assets/categories/image4.png');
      case 'Modifications':
        return Image.asset('assets/categories/image5.png');
      case 'Emmision':
        return Image.asset('assets/categories/image7.png');
      default:
        return Image.asset('assets/categories/image7.png');
      
    }
  }
}