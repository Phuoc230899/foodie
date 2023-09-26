import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/model/user_comment.dart';

class ListReview extends StatefulWidget {
  const ListReview({super.key});

  @override
  State<ListReview> createState() => _ListReviewState();
}

class _ListReviewState extends State<ListReview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      onPressed: () => Navigator.of(context).pop(),
                      icon: const Icon(Icons.chevron_left_outlined,
                          color: Colors.black, size: 40),
                    ),
                  ),
                ),
                const Expanded(
                  flex: 2,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Review & Ratings',
                      style: TextStyle(
                          fontFamily: 'Josefin',
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: list_cmt.map((cmt) {
                  return Builder(builder: (BuildContext context) {
                    return Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              flex: 0,
                              child: ClipOval(
                                  child: Image.asset(
                                cmt.img,
                                fit: BoxFit.cover,
                                width: 40.w,
                                height: 40.h,
                              )),
                            ),
                            Expanded(
                              flex: 4,
                              child: Padding(
                                padding: EdgeInsets.only(left: 10.w),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              cmt.name,
                                              style: const TextStyle(
                                                  fontFamily: 'Josefin',
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            padding:
                                                EdgeInsets.only(right: 20.w),
                                            child: Align(
                                              alignment: Alignment.centerRight,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                  color: Colors.grey
                                                      .withOpacity(0.4),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.all(5.w),
                                                  child: FittedBox(
                                                    fit: BoxFit.cover,
                                                    child: Row(
                                                      children: [
                                                        const Icon(
                                                          Icons.star,
                                                          color: Colors.yellow,
                                                          size: 15,
                                                        ),
                                                        SizedBox(
                                                          width: 5.w,
                                                        ),
                                                        Text(
                                                          cmt.rate.toString(),
                                                          style: const TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(right: 10.w),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          cmt.cmt,
                                          style: const TextStyle(
                                              fontFamily: 'Josefin',
                                              color: Colors.grey),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                      ],
                    );
                  });
                }).toList(),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
