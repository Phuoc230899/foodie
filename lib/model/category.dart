import 'package:flutter/material.dart';

class Category {
  final String name;
  final List<Color> colors;
  final String img;
  final int id;

  Category(
      {required this.name,
      required this.colors,
      required this.img,
      required this.id});
}

final List<Category> list_category = [
  Category(
      id: 0,
      name: 'Italian',
      colors: [
        Color.fromARGB(255, 252, 158, 104).withOpacity(0.7),
        Colors.red.withOpacity(0.5),
        Colors.pink.withOpacity(0.5),
      ],
      img: 'assets/images/category_img.jpg'),
  Category(
      id: 1,
      name: 'Chinese',
      colors: [
        Color.fromARGB(255, 215, 93, 252).withOpacity(0.7),
        Colors.red.withOpacity(0.5),
        Colors.pink.withOpacity(0.5),
      ],
      img: 'assets/images/category_img1.jpg'),
  Category(
      id: 2,
      name: 'Maxican',
      colors: [
        const Color.fromARGB(255, 3, 81, 184).withOpacity(0.7),
        const Color.fromARGB(255, 11, 61, 128).withOpacity(0.7),
        const Color.fromARGB(255, 54, 244, 171).withOpacity(0.5),
      ],
      img: 'assets/images/login.jpg'),
  Category(
      id: 3,
      name: 'Thai',
      colors: [
        Color.fromARGB(255, 252, 158, 104).withOpacity(0.7),
        Colors.red.withOpacity(0.5),
        Colors.pink.withOpacity(0.5),
      ],
      img: 'assets/images/category_img.jpg'),
  Category(
      id: 4,
      name: 'Arabian',
      colors: [
        Color.fromARGB(255, 215, 93, 252).withOpacity(0.7),
        Colors.red.withOpacity(0.5),
        Colors.pink.withOpacity(0.5),
      ],
      img: 'assets/images/category_img1.jpg'),
  Category(
      id: 5,
      name: 'Indian',
      colors: [
        const Color.fromARGB(255, 3, 81, 184).withOpacity(0.7),
        const Color.fromARGB(255, 11, 61, 128).withOpacity(0.7),
        const Color.fromARGB(255, 54, 244, 171).withOpacity(0.5),
      ],
      img: 'assets/images/login.jpg'),
  Category(
      id: 6,
      name: 'American',
      colors: [
        Color.fromARGB(255, 252, 158, 104).withOpacity(0.7),
        Colors.red.withOpacity(0.5),
        Colors.pink.withOpacity(0.5),
      ],
      img: 'assets/images/category_img.jpg'),
  Category(
      id: 7,
      name: 'Korean',
      colors: [
        Color.fromARGB(255, 215, 93, 252).withOpacity(0.7),
        Colors.red.withOpacity(0.5),
        Colors.pink.withOpacity(0.5),
      ],
      img: 'assets/images/category_img1.jpg'),
  Category(
      id: 8,
      name: 'European',
      colors: [
        const Color.fromARGB(255, 3, 81, 184).withOpacity(0.7),
        const Color.fromARGB(255, 11, 61, 128).withOpacity(0.7),
        const Color.fromARGB(255, 54, 244, 171).withOpacity(0.5),
      ],
      img: 'assets/images/login.jpg'),
];
