import 'package:flutter/material.dart';

class Menu {
  String name;
  String price;
  String image;
  String subtitle;

  Menu({
    required this.name,
    required this.price,
    required this.image,
    required this.subtitle,
  });
}

List<Map<String, dynamic>> menuList = [
  {
    'name': 'Tower Burger',
    'price': "\$ 245.00",
    'image': "images/B1.png",
    'subtitle': 'Juicy Burger'
  },
  {
    'name': 'Chicken Burger',
    'price': "\$ 75.00",
    'image': "images/B2.png",
    'subtitle': 'Double Patty'
  },
  {
    'name': 'Hamburger Patty',
    'price': "\$ 120.00",
    'image': "images/b3.png",
    'subtitle': 'Double Patty'
  },
];
