import 'package:flutter/material.dart';

Color primaryColor = const Color(0xFFFA5A2A);
Color secondaryColor = const Color(0xFF030711);
Color tertiaryColor = const Color(0xFFA4A8B5);
Color pinkColor = const Color(0xFFF53349);
Color blurredPinkColor = const Color(0xFFFCEAED);
Color spaceGrayColor = const Color(0xFF828487);
Color grayColor = const Color(0xFFEEF1F1);
Color checkboxBorderColor = const Color(0xFFECEEF5);
Color containerBorderColor = const Color(0xFFE7E9F0);
Color defaultBgColor = Colors.white;


TextStyle secondaryTextStyle =
    TextStyle(color: secondaryColor, fontWeight: FontWeight.w500);

TextStyle tertiaryTextStyle = TextStyle(
  color: tertiaryColor,
  fontWeight: FontWeight.w500,
);

TextStyle bigTextStyle = const TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w500,
);


List ipadImages = [
  'apple-ipad-pro-11-2022.jpg',
  'apple-ipad-pro-129-2022-1.jpg',
  'apple-ipad-pro-129-2022-2.jpg',
  'apple-ipad-pro-2022.jpg',
];

List categories = [
  {
    'title' : 'Electronic',
    'imageUrl' : 'assets/images/electronics.png'
  },
  {
    'title' : 'Food & Drink',
    'imageUrl' : 'assets/images/food-and-drink.png'
  },
  {
    'title' : 'Accesories',
    'imageUrl' : 'assets/images/accesories.png'
  },
  {
    'title' : 'Beauty',
    'imageUrl' : 'assets/images/makeup.png'
  },
  {
    'title' : 'Furniture',
    'imageUrl' : 'assets/images/furniture.png'
  },
  {
    'title' : 'Fashion',
    'imageUrl' : 'assets/images/fashion.png'
  },
  {
    'title' : 'Health',
    'imageUrl' : 'assets/images/health.png'
  },
  {
    'title' : 'Stationary',
    'imageUrl' : 'assets/images/stationery.png'
  },
];

const String _selectedValue = 'Black, M';
const String _selectedValue2 = 'Grey, M';
List<String> list = <String>['Black, M', 'Grey, M', 'two', 'three'];

List cartItems = [
  {
    'selectedValue': 'none',
    'list': const<String> [],
    'imageUrl': 'assets/images/apple-watch.jpg',
    'name': 'Apple Watch Ultra 2 with Ocean Band',
    'discountPrice': '',
    'discount': 0,
    'price': 'IDR 15.999.000',
    'isChecked': false,    
  },
  {
    'selectedValue': 'none',
    'list': const<String> [],
    'imageUrl': 'assets/images/airpods-pro.png',
    'name': 'Airpods Pro 2nd generation with USB-C',
    'discountPrice': 'IDR 3.499.000',
    'discount': 10,
    'price': 'IDR 4.299.000',
    'isChecked': true,    
  },
  {
    'selectedValue': _selectedValue,
    'list': list,
    'imageUrl': 'assets/images/hoodie.png',
    'name': 'Adicolor Neuclassics Men\'s Hoodie',
    'discountPrice': '',
    'discount': 0,
    'price': 'IDR 1.500.000',
    'isChecked': false,    
  },
  {
    'selectedValue': _selectedValue2,
    'list': list,
    'imageUrl': 'assets/images/nba-bulls-jogger.png',
    'name': 'NBA Bulls Men\'s Jogger',
    'discountPrice': 'IDR 391.300',
    'discount': 7,
    'price': 'IDR 559.000',
    'isChecked': false,    
  },
  
];
