import 'dart:ui';

import 'package:flutter/material.dart';

class MyStarClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    // Tạo một hình dạng tùy chỉnh cho nửa trên của biểu tượng sao
    path.lineTo(size.width / 2, 0);
    path.lineTo(size.width / 2, size.height / 2);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}