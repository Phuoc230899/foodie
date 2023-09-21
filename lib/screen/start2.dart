import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/home.dart';
import 'package:food_app/screen/start.dart';

class StartPage2 extends StatelessWidget {
  const StartPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onHorizontalDragEnd: (details) {
          // Kiểm tra xem người dùng vuốt qua bên phải (sang trái) hay bên trái (sang phải)
          if (details.primaryVelocity! > 0) {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return const StartPage();
                },
              ),
            );
          }
        },
        child: Stack(children: [
          Image.asset('assets/images/img_start2.jpg',
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height),
          BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
              child: Container(
                  color: Colors.black.withOpacity(0.4),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.only(right: 10.w),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Home()));
                                  },
                                  child: const Text(
                                    'Skip',
                                    style: TextStyle(
                                        fontFamily: 'Josefin',
                                        fontSize: 20,
                                        color: Colors.white),
                                  ),
                                )),
                          ),
                        ),
                        SizedBox(
                          height: 200.h,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 40.w),
                          child: const Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Hi !",
                              style: TextStyle(
                                  fontFamily: 'Josefin',
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 40.w),
                          child: const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Welcome to",
                              style: TextStyle(
                                  fontFamily: 'Josefin',
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 40.w),
                          child: const Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Foodybite",
                              style: TextStyle(
                                  fontFamily: 'Josefin',
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.yellow),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 100.h,
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            padding: EdgeInsets.only(left: 40.w, right: 40.w),
                            child: const Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "PLease turn on your GPS to find out better restaurant suggetions near you.",
                                style: TextStyle(
                                    fontFamily: 'Josefin',
                                    fontSize: 20,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 100.h,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 40.w, right: 40.w),
                          child: ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                            child: SizedBox(
                              width: 329,
                              height: 56,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      const Color.fromARGB(255, 86, 99, 255),
                                ),
                                child: const Text(
                                  'Turn on GPS',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )))
        ]),
      ),
    );
  }
}
