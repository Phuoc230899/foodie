import 'package:avatar_stack/avatar_stack.dart';
import 'package:avatar_stack/positions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/home.dart';
import 'package:food_app/model/shop.dart';
import 'package:food_app/screen/shop_detail.dart';
import 'package:food_app/widget/clipper.dart';

class UserDetail extends StatefulWidget {
  const UserDetail({super.key});

  @override
  State<UserDetail> createState() => _UserDetailState();
}

class _UserDetailState extends State<UserDetail> {
  final settings = RestrictedAmountPositions(
    maxAmountItems: 4,
    maxCoverage: 0.3,
    minCoverage: 0.1,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            flex: 0,
            child: Row(
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
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.only(left: 30.w),
                    child: const Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        'Profile',
                        style: TextStyle(
                            fontFamily: 'Josefin',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 100.h,
            decoration: const BoxDecoration(
              shape: BoxShape
                  .circle, // Đặt hình dạng là hình tròn, // Đặt màu nền của hình tròn
            ),
            child: const Center(
              child: CircleAvatar(
                radius: 60, // Đặt bán kính của hình tròn
                backgroundImage: AssetImage(
                    'assets/images/avatar1.png'), // Đặt hình ảnh của Avatar
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 30.h,
            child: const Column(children: [
              Expanded(
                child: Center(
                    child: Text(
                  "Phuoc Hoang",
                  style: TextStyle(
                      fontFamily: 'Josefin', fontWeight: FontWeight.bold),
                )),
              ),
              Expanded(
                  child: Center(
                child: Text(
                  'hoangvanphuocdev@gmail.com',
                  style: TextStyle(fontFamily: 'Josefin', color: Colors.grey),
                ),
              ))
            ]),
          ),
          SizedBox(
            height: 30.h,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 30.h,
            child: Center(
              child: Row(
                children: [
                  const Expanded(
                      child: Column(
                    children: [
                      Expanded(
                          child: Text(
                        '120',
                        style: TextStyle(
                            fontFamily: 'Josefin',
                            color: Color.fromARGB(255, 86, 99, 255),
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      )),
                      Expanded(
                          child: Center(
                        child: Text(
                          'Reviews',
                          style: TextStyle(
                              fontFamily: 'Josefin',
                              color: Colors.grey,
                              fontSize: 15),
                        ),
                      ))
                    ],
                  )),
                  SizedBox(
                    child: Text(
                      "|",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.withOpacity(0.5)),
                    ),
                  ),
                  const Expanded(
                    child: Column(
                      children: [
                        Expanded(
                            child: Text(
                          '50k',
                          style: TextStyle(
                              fontFamily: 'Josefin',
                              color: Color.fromARGB(255, 86, 99, 255),
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        )),
                        Expanded(
                            child: Center(
                          child: Text(
                            'Followers',
                            style: TextStyle(
                                fontFamily: 'Josefin',
                                color: Colors.grey,
                                fontSize: 15),
                          ),
                        ))
                      ],
                    ),
                  ),
                  SizedBox(
                    child: Text(
                      "|",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.withOpacity(0.5)),
                    ),
                  ),
                  const Expanded(
                      child: Column(
                    children: [
                      Expanded(
                          child: Text(
                        '45',
                        style: TextStyle(
                            fontFamily: 'Josefin',
                            color: Color.fromARGB(255, 86, 99, 255),
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      )),
                      Expanded(
                          child: Center(
                        child: Text(
                          'Following',
                          style: TextStyle(
                              fontFamily: 'Josefin',
                              color: Colors.grey,
                              fontSize: 15),
                        ),
                      ))
                    ],
                  ))
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 30.h,
            child: Row(
              children: [
                Expanded(
                    child: Center(
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 86, 99, 255),
                        padding: EdgeInsets.only(left: 40.w, right: 40.w),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0))),
                    child: const Text(
                      'Follow',
                      style:
                          TextStyle(color: Colors.white, fontFamily: 'Josefin'),
                    ),
                  ),
                )),
                Expanded(
                    child: Center(
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        side: const BorderSide(color: Colors.grey, width: 1.0),
                        backgroundColor: Colors.white,
                        padding: EdgeInsets.only(left: 40.w, right: 40.w),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0))),
                    child: const Text(
                      'Block',
                      style:
                          TextStyle(color: Colors.grey, fontFamily: 'Josefin'),
                    ),
                  ),
                )),
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 1.h,
            color: Colors.grey.withOpacity(0.4),
          ),
          SizedBox(
            height: 10.h,
          ),
          Expanded(
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: CustomScrollView(
                slivers: [
                  SliverPadding(
                    padding: EdgeInsets.only(left: 10.w, right: 10.w),
                    sliver: SliverList(
                      delegate: SliverChildBuilderDelegate(
                        childCount: 1,
                        (BuildContext context, int index) {
                          // Tạo và trả về các phần tử con (Widget) ở đây
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: listShops.map((item) {
                              return Builder(
                                builder: (BuildContext context) {
                                  return InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(builder: (context) {
                                        return ShopPage(
                                          item: item,
                                        );
                                      }));
                                    },
                                    child: Card(
                                      elevation: 5.0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            15.0), // Đặt độ cong của góc để tạo viền tròn
                                      ),
                                      child: SizedBox(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: 200.h,
                                          // margin: const EdgeInsets.symmetric(horizontal: 5.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                  flex: 2,
                                                  child: Stack(children: [
                                                    Hero(
                                                      tag: item.id,
                                                      child: ClipPath(
                                                        clipper: MyClipper(),
                                                        child: Image.asset(
                                                          item.imageUrl,
                                                          fit: BoxFit.cover,
                                                          width:
                                                              double.infinity,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 15.w,
                                                          top: 10.h),
                                                      child: Container(
                                                        width: 40.w,
                                                        height: 20.h,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  5.w),
                                                          child: item.isOpen
                                                              ? const FittedBox(
                                                                  fit: BoxFit
                                                                      .cover,
                                                                  child: Text(
                                                                    'Open',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .green,
                                                                        fontFamily:
                                                                            'Josefin',
                                                                        fontWeight:
                                                                            FontWeight.bold),
                                                                  ),
                                                                )
                                                              : const FittedBox(
                                                                  fit: BoxFit
                                                                      .cover,
                                                                  child: Text(
                                                                    'Closed',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .red,
                                                                        fontFamily:
                                                                            'Josefin',
                                                                        fontWeight:
                                                                            FontWeight.bold),
                                                                  ),
                                                                ),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 260.w,
                                                          top: 10.h),
                                                      child: Container(
                                                        width: 40.w,
                                                        height: 20.h,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  5.w),
                                                          child: FittedBox(
                                                            fit: BoxFit.cover,
                                                            child: Row(
                                                              children: [
                                                                const Icon(
                                                                  Icons.star,
                                                                  color: Colors
                                                                      .yellow,
                                                                  size: 20,
                                                                ),
                                                                SizedBox(
                                                                  width: 5.w,
                                                                ),
                                                                Text(
                                                                  item.star,
                                                                  style: const TextStyle(
                                                                      color: Colors
                                                                          .black,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold),
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    )
                                                  ])),
                                              Expanded(
                                                  flex: 1,
                                                  child: Column(children: [
                                                    SizedBox(
                                                      height: 12.h,
                                                    ),
                                                    SingleChildScrollView(
                                                      child: Row(
                                                        children: [
                                                          Expanded(
                                                            flex: 2,
                                                            child: Container(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left: 12
                                                                            .w),
                                                                child: Text(
                                                                  item.name,
                                                                  style: const TextStyle(
                                                                      fontFamily:
                                                                          'Josefin',
                                                                      fontSize:
                                                                          20,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold),
                                                                )),
                                                          ),
                                                          Expanded(
                                                            flex: 1,
                                                            child: Container(
                                                                width: 30.w,
                                                                height: 20.h,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  gradient: const RadialGradient(
                                                                      colors: [
                                                                        Colors
                                                                            .red,
                                                                        Colors
                                                                            .yellow,
                                                                        Colors
                                                                            .pink,
                                                                        Colors
                                                                            .orange
                                                                      ],
                                                                      center: Alignment
                                                                          .center,
                                                                      radius:
                                                                          12,
                                                                      focalRadius:
                                                                          12),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10.0),
                                                                ),
                                                                child: Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  child:
                                                                      FittedBox(
                                                                    fit: BoxFit
                                                                        .cover,
                                                                    child: Text(
                                                                      item.category,
                                                                      style: const TextStyle(
                                                                          color: Colors
                                                                              .white,
                                                                          fontFamily:
                                                                              'Josefin',
                                                                          fontSize:
                                                                              12,
                                                                          fontWeight:
                                                                              FontWeight.bold),
                                                                    ),
                                                                  ),
                                                                )),
                                                          ),
                                                          SizedBox(
                                                            width: 10.w,
                                                          ),
                                                          Expanded(
                                                            flex: 1,
                                                            child: Container(
                                                                width: 30.w,
                                                                height: 20.h,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: const Color
                                                                      .fromARGB(
                                                                      255,
                                                                      86,
                                                                      99,
                                                                      255),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10.0),
                                                                ),
                                                                child: Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  child:
                                                                      FittedBox(
                                                                    fit: BoxFit
                                                                        .cover,
                                                                    child: Text(
                                                                      item.category,
                                                                      style: const TextStyle(
                                                                          color: Colors
                                                                              .white,
                                                                          fontFamily:
                                                                              'Josefin',
                                                                          fontSize:
                                                                              12,
                                                                          fontWeight:
                                                                              FontWeight.bold),
                                                                    ),
                                                                  ),
                                                                )),
                                                          ),
                                                          SizedBox(
                                                            width: 10.w,
                                                          ),
                                                          Expanded(
                                                            flex: 2,
                                                            child: SizedBox(
                                                              width: 90.0.w,
                                                              height: 20.0.h,
                                                              // color: Colors.red,
                                                              child:
                                                                  AvatarStack(
                                                                settings:
                                                                    settings,
                                                                width: 80.w,
                                                                height: 50.h,
                                                                avatars: [
                                                                  for (var n =
                                                                          0;
                                                                      n < 20;
                                                                      n++)
                                                                    NetworkImage(
                                                                        getAvatarUrl(
                                                                            n))
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    )
                                                  ]))
                                            ],
                                          )),
                                    ),
                                  );
                                },
                              );
                            }).toList(),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
