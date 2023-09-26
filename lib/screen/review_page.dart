import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReviewPage extends StatefulWidget {
  const ReviewPage({super.key});

  @override
  State<ReviewPage> createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage> {
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
      body: SafeArea(
        child: Column(
          children: [
          Row(
            children: [
              Expanded(
                flex: 1,
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
                flex: 2,
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Review & Ratings',
                    style: TextStyle(
                        fontFamily: 'Josefin',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
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
            ),
            SizedBox(
              height: 10.h,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 20.h,
              child: const Center(
                child: Text(
                  'Rate your experience',
                  style: TextStyle(
                      fontFamily: 'Josefin', fontSize: 15, color: Colors.grey),
                ),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Container(
              height: 200.h,
              child: Padding(
                padding: EdgeInsets.only(left: 50.w, right: 50.w),
                child: Card(
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        15.0), // Đặt độ cong của góc để tạo viền tròn
                  ),
                  child: TextField(
                    textAlign: TextAlign.left,
                    textInputAction: TextInputAction.done,
                    onEditingComplete: () {},
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: 'Josefin',
                        fontWeight: FontWeight.w500),
                    decoration: InputDecoration(
                      hintText: 'Write your experience',
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.5),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide.none),
                      labelStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: 'Josefin',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
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
            child: SizedBox(
              height: 50.0,
              width: MediaQuery.of(context).size.width / 2 - 2,
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25.0),
                      topRight: Radius.circular(25.0)),
                  color: Color.fromARGB(255, 86, 99, 255),
                ),
                child: TextButton(
                    onPressed: () {
                    },
                    child: const Center(
                      child: Text(
                        'Done',
                        style: TextStyle(
                            fontFamily: 'Josefin',
                            fontSize: 20,
                            color: Colors.white),
                      ),
                    )),
              ),
            )),
      ),
    );
  }
}
