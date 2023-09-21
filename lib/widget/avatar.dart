import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Avatar extends StatelessWidget {
  const Avatar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 2,
      itemBuilder: (BuildContext context, int index) {
        return SizedBox(
          width: 30.0.w, // Kích thước hình tròn
          height: 30.0.w, // Kích thước hình tròn
          child: Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle, // Đặt hình dạng là hình tròn
              color: Colors.blue, // Màu nền của hình tròn
            ),
          ),
        );
      },
    );
  }
}
