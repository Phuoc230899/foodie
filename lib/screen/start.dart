import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/screen/login_page.dart';
import 'package:food_app/screen/start2.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GestureDetector(
          onHorizontalDragEnd: (details) {
            // Kiểm tra xem người dùng vuốt qua bên phải (sang trái) hay bên trái (sang phải)
            if (details.primaryVelocity! < 0) {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return const StartPage2();
                  },
                ),
              );
            }
          },
          child: Stack(
              children: [
          Image.asset('assets/images/img_start.jpg',
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height),
          SizedBox(
            height: 200.h,
          ),
          IconButton(
              padding: EdgeInsets.only(top: 20.h, left: 310.w),
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(
                Icons.navigate_next,
                color: Colors.black,
                size: 34,
              )),
              ],
            ),
        ));
  }
}
