import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/widget/slider.dart';
import 'package:food_app/widget/starclipper.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({super.key});

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  List<bool> listRating = [false, false, false, false, false];

  void rating(int index) {
    listRating = [false, false, false, false, false];
    setState(() {
      for (int i = index; i >= 0; i--) {
        listRating[i] = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        SizedBox(
          height: 40.h,
        ),
        Row(
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.centerLeft,
                child: IconButton(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: const Icon(Icons.chevron_left_outlined,
                      color: Colors.black, size: 50),
                ),
              ),
            ),
            const Expanded(
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'Filter',
                  style: TextStyle(
                      fontFamily: 'Josefin',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child: IconButton(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: const Icon(Icons.close_outlined,
                      color: Colors.grey, size: 40),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 30.h,
        ),
        SizedBox(
          height: 30.h,
          width: MediaQuery.of(context).size.width,
          child: const Center(
            child: Text(
              'Select Category',
              style: TextStyle(
                  fontFamily: 'Josefin',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
        ),
        SizedBox(
          height: 15.h,
        ),
        Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 15.w),
                    child: Card(
                      elevation: 5.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            15.0), // Đặt độ cong của góc để tạo viền tròn
                      ),
                      child: Container(
                        width: 30.w,
                        height: 30.h,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                const Color.fromARGB(255, 252, 158, 104)
                                    .withOpacity(0.7),
                                Colors.red.withOpacity(0.5),
                                Colors.pink.withOpacity(0.5),
                              ],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                            borderRadius: BorderRadius.circular(10.0)),
                        child: const Center(
                          child: Text(
                            'Italian',
                            style: TextStyle(
                                fontFamily: 'Josefin',
                                fontSize: 15,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 8.w,
                ),
                Expanded(
                  child: Card(
                    elevation: 5.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          15.0), // Đặt độ cong của góc để tạo viền tròn
                    ),
                    child: Container(
                      width: 30.w,
                      height: 30.h,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0)),
                      child: const Center(
                        child: Text(
                          'Chinese',
                          style: TextStyle(
                              fontFamily: 'Josefin',
                              fontSize: 15,
                              color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 8.w,
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(right: 15.w),
                    child: Card(
                      elevation: 5.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            15.0), // Đặt độ cong của góc để tạo viền tròn
                      ),
                      child: Container(
                        width: 30.w,
                        height: 30.h,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0)),
                        child: const Center(
                          child: Text(
                            'Maxican',
                            style: TextStyle(
                                fontFamily: 'Josefin',
                                fontSize: 15,
                                color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 15.w),
                    child: Card(
                      elevation: 5.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            15.0), // Đặt độ cong của góc để tạo viền tròn
                      ),
                      child: Container(
                        width: 30.w,
                        height: 30.h,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0)),
                        child: const Center(
                          child: Text(
                            'Thai',
                            style: TextStyle(
                                fontFamily: 'Josefin',
                                fontSize: 15,
                                color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 8.w,
                ),
                Expanded(
                  child: Card(
                    elevation: 5.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          15.0), // Đặt độ cong của góc để tạo viền tròn
                    ),
                    child: Container(
                      width: 30.w,
                      height: 30.h,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0)),
                      child: const Center(
                        child: Text(
                          'Arabian',
                          style: TextStyle(
                              fontFamily: 'Josefin',
                              fontSize: 15,
                              color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 8.w,
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(right: 15.w),
                    child: Card(
                      elevation: 2.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            15.0), // Đặt độ cong của góc để tạo viền tròn
                      ),
                      child: Container(
                        width: 30.w,
                        height: 30.h,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0)),
                        child: const Center(
                          child: Text(
                            'Indian',
                            style: TextStyle(
                                fontFamily: 'Josefin',
                                fontSize: 15,
                                color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 15.w),
                    child: Card(
                      elevation: 2.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            15.0), // Đặt độ cong của góc để tạo viền tròn
                      ),
                      child: Container(
                        width: 30.w,
                        height: 30.h,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0)),
                        child: const Center(
                          child: Text(
                            'American',
                            style: TextStyle(
                                fontFamily: 'Josefin',
                                fontSize: 15,
                                color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 8.w,
                ),
                Expanded(
                  child: Card(
                    elevation: 2.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          15.0), // Đặt độ cong của góc để tạo viền tròn
                    ),
                    child: Container(
                      width: 30.w,
                      height: 30.h,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0)),
                      child: const Center(
                        child: Text(
                          'Korean',
                          style: TextStyle(
                              fontFamily: 'Josefin',
                              fontSize: 15,
                              color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 8.w,
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(right: 15.w),
                    child: Card(
                      elevation: 5.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            15.0), // Đặt độ cong của góc để tạo viền tròn
                      ),
                      child: Container(
                        width: 30.w,
                        height: 30.h,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0)),
                        child: const Center(
                          child: Text(
                            'European',
                            style: TextStyle(
                                fontFamily: 'Josefin',
                                fontSize: 15,
                                color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
        SizedBox(
          height: 25.h,
        ),
        SizedBox(
          height: 30.h,
          width: MediaQuery.of(context).size.width,
          child: const Center(
            child: Text(
              'Distance',
              style: TextStyle(
                  fontFamily: 'Josefin',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        const MySlider(),
        SizedBox(
          height: 20.h,
        ),
        SizedBox(
          height: 30.h,
          width: MediaQuery.of(context).size.width,
          child: const Center(
            child: Text(
              'Ratings',
              style: TextStyle(
                  fontFamily: 'Josefin',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Padding(
          padding: EdgeInsets.only(left: 50.w, right: 50.w),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 40.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.grey.withOpacity(0.2)),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                      onPressed: () {
                        rating(0);
                      },
                      icon: Icon(
                        listRating[0] ? Icons.star : Icons.star_outline,
                        size: 30,
                      )),
                  IconButton(
                      onPressed: () {
                        rating(1);
                      },
                      icon: Icon(
                        listRating[1] ? Icons.star : Icons.star_outline,
                        size: 30,
                      )),
                  IconButton(
                      onPressed: () {
                        rating(2);
                      },
                      icon: Icon(
                        listRating[2] ? Icons.star : Icons.star_outline,
                        size: 30,
                      )),
                  IconButton(
                      onPressed: () {
                        rating(3);
                      },
                      icon: Icon(
                        listRating[3] ? Icons.star : Icons.star_outline,
                        size: 30,
                      )),
                  IconButton(
                      onPressed: () {
                        rating(4);
                      },
                      icon: Icon(
                        listRating[4] ? Icons.star : Icons.star_outline,
                        size: 30,
                      )),
                ]),
          ),
        )
      ]),
      bottomNavigationBar: BottomAppBar(
        clipBehavior: Clip.antiAlias,
        shape: const CircularNotchedRectangle(),
        notchMargin: 8,
        color: Colors.transparent,
        elevation: 10,
        child: Container(
          height: 50.0,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25.0),
                  topRight: Radius.circular(25.0))),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            SizedBox(
              height: 50.0,
              width: MediaQuery.of(context).size.width / 2 - 2,
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25.0)),
                  color:  Color.fromARGB(255, 86, 99, 255),
                ),
                child: TextButton(
                    onPressed: () {},
                    child: const Center(
                      child: Text(
                        'Reset',
                        style: TextStyle(
                            fontFamily: 'Josefin',
                            fontSize: 20,
                            color: Colors.white),
                      ),
                    )),
              ),
            ),
            SizedBox(
              height: 50.0,
              width: MediaQuery.of(context).size.width / 2 - 2,
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25.0)),
                  color:  Color.fromARGB(255, 86, 99, 255),
                ),
                child: TextButton(
                    onPressed: () {},
                    child: const Center(
                      child: Text(
                        'Apply',
                        style: TextStyle(
                            fontFamily: 'Josefin',
                            fontSize: 20,
                            color: Colors.white),
                      ),
                    )),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
