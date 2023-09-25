import 'dart:ui';

import 'package:avatar_stack/avatar_stack.dart';
import 'package:avatar_stack/positions.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/model/shop.dart';
import 'package:food_app/screen/filter_page.dart';
import 'package:food_app/screen/list_shop.dart';
import 'package:food_app/screen/shop_detail.dart';
import 'package:food_app/widget/avatar.dart';
import 'package:food_app/widget/clipper.dart';
import 'package:food_app/widget/navbar_widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final Widget _navbar = const NavbarWidget();
  final settings = RestrictedAmountPositions(
    maxAmountItems: 4,
    maxCoverage: 0.3,
    minCoverage: 0.1,
  );
  final settings2 = RestrictedAmountPositions(
    maxAmountItems: 6,
    // maxCoverage: 0.5,
    // minCoverage: 0.1,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Column(
          children: [
            SizedBox(
              height: 40.w,
            ),
            Padding(
              padding: EdgeInsets.only(right: 15.w, left: 15.w),
              child: Card(
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      15.0), // Đặt độ cong của góc để tạo viền tròn
                ),
                child: TextField(
                  textAlign: TextAlign.center,
                  textInputAction: TextInputAction.done,
                  onEditingComplete: () {},
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'Josefin',
                      fontWeight: FontWeight.w500),
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.search_outlined,
                      color: Colors.grey,
                    ),
                    suffixIcon: FloatingActionButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const FilterPage()));
                      },
                      backgroundColor: Colors.white,
                      shape: const CircleBorder(),
                      elevation: 0,
                      child: const Icon(
                        Icons.filter_list_sharp,
                        color: Colors.grey,
                      ),
                    ),
                    hintText: 'Find Restaurant',
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
            SizedBox(
              height: 25.h,
            ),
            Row(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    padding: EdgeInsets.only(left: 18.w),
                    child: const Text(
                      'Trending Restaurant',
                      style: TextStyle(
                          fontFamily: 'Josefin',
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(
                  width: 80.w,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Shops()));
                    },
                    child: const Text(
                      'See all (45)',
                      style: TextStyle(
                          fontFamily: 'Josefin',
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            CarouselSlider(
              options: CarouselOptions(
                  height: 200.h,
                  enableInfiniteScroll: false,
                  viewportFraction: 0.9),
              items: listShops.map((item) {
                return Builder(
                  builder: (BuildContext context) {
                    return InkWell(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
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
                            width: MediaQuery.of(context).size.width,
                            // margin: const EdgeInsets.symmetric(horizontal: 5.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                    flex: 2,
                                    child: Stack(children: [
                                      Hero(
                                        tag: item.imageUrl,
                                        child: ClipPath(
                                          clipper: MyClipper(),
                                          child: Image.asset(
                                            item.imageUrl,
                                            fit: BoxFit.cover,
                                            width: double.infinity,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: 15.w, top: 10.h),
                                        child: Container(
                                          width: 40.w,
                                          height: 20.h,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(5.w),
                                            child: item.isOpen
                                                ? const FittedBox(
                                                    fit: BoxFit.cover,
                                                    child: Text(
                                                      'Open',
                                                      style: TextStyle(
                                                          color: Colors.green,
                                                          fontFamily: 'Josefin',
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  )
                                                : const FittedBox(
                                                    fit: BoxFit.cover,
                                                    child: Text(
                                                      'Closed',
                                                      style: TextStyle(
                                                          color: Colors.red,
                                                          fontFamily: 'Josefin',
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: 260.w, top: 10.h),
                                        child: Container(
                                          width: 40.w,
                                          height: 20.h,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(10),
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
                                                    size: 20,
                                                  ),
                                                  SizedBox(
                                                    width: 5.w,
                                                  ),
                                                  Text(
                                                    item.star,
                                                    style: const TextStyle(
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold),
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
                                            Container(
                                                padding:
                                                    EdgeInsets.only(left: 12.w),
                                                child: Text(
                                                  item.name,
                                                  style: const TextStyle(
                                                      fontFamily: 'Josefin',
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )),
                                            SizedBox(
                                              width: 10.w,
                                            ),
                                            Container(
                                                width: 30.w,
                                                height: 20.h,
                                                decoration: BoxDecoration(
                                                  gradient:
                                                      const RadialGradient(
                                                          colors: [
                                                        Colors.red,
                                                        Colors.yellow,
                                                        Colors.pink,
                                                        Colors.orange
                                                      ],
                                                          center:
                                                              Alignment.center,
                                                          radius: 12,
                                                          focalRadius: 12),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                                child: Align(
                                                  alignment: Alignment.center,
                                                  child: FittedBox(
                                                    fit: BoxFit.cover,
                                                    child: Text(
                                                      item.category,
                                                      style: const TextStyle(
                                                          color: Colors.white,
                                                          fontFamily: 'Josefin',
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                )),
                                            SizedBox(
                                              width: 10.w,
                                            ),
                                            Container(
                                                width: 30.w,
                                                height: 20.h,
                                                decoration: BoxDecoration(
                                                  color: const Color.fromARGB(
                                                      255, 86, 99, 255),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                                child: Align(
                                                  alignment: Alignment.center,
                                                  child: FittedBox(
                                                    fit: BoxFit.cover,
                                                    child: Text(
                                                      item.category,
                                                      style: const TextStyle(
                                                          color: Colors.white,
                                                          fontFamily: 'Josefin',
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                )),
                                            SizedBox(
                                              width: 20.w,
                                            ),
                                            SizedBox(
                                              width: 90.0.w,
                                              height: 20.0.h,
                                              // color: Colors.red,
                                              child: AvatarStack(
                                                settings: settings,
                                                width: 80.w,
                                                height: 50.h,
                                                avatars: [
                                                  for (var n = 0; n < 20; n++)
                                                    NetworkImage(
                                                        getAvatarUrl(n))
                                                ],
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
            ),
            SizedBox(
              height: 25.h,
            ),
            Row(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    padding: EdgeInsets.only(left: 18.w),
                    child: const Text(
                      'Category',
                      style: TextStyle(
                          fontFamily: 'Josefin',
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(
                  width: 170.w,
                ),
                const Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'See all (9)',
                    style: TextStyle(
                        fontFamily: 'Josefin',
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Container(
              padding: EdgeInsets.only(left: 18.w),
              child: Row(
                children: [
                  SizedBox(
                    width: 100.w,
                    height: 100.h,
                    child: Stack(children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset(
                          'assets/images/category_img.jpg',
                          fit: BoxFit.cover,
                          width: 100.w,
                          height: 100.h,
                        ),
                      ),
                      BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
                        child: Container(
                          width: 100.w,
                          height: 100.h,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color.fromARGB(255, 252, 158, 104)
                                      .withOpacity(0.7),
                                  Colors.red.withOpacity(0.5),
                                  Colors.pink.withOpacity(0.5),
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                              ),
                              borderRadius: BorderRadius.circular(10.0)),
                          child: const Center(
                              child: Text(
                            'Italian',
                            style: TextStyle(
                                fontFamily: 'Josefin',
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )),
                        ),
                      )
                    ]),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  SizedBox(
                    width: 100.w,
                    height: 100.h,
                    child: Stack(children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset(
                          'assets/images/category_img1.jpg',
                          fit: BoxFit.cover,
                          width: 100.w,
                          height: 100.h,
                        ),
                      ),
                      BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
                        child: Container(
                          width: 100.w,
                          height: 100.h,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color.fromARGB(255, 215, 93, 252)
                                      .withOpacity(0.7),
                                  Colors.red.withOpacity(0.5),
                                  Colors.pink.withOpacity(0.5),
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                              ),
                              borderRadius: BorderRadius.circular(10.0)),
                          child: const Center(
                              child: Text(
                            'Chinese',
                            style: TextStyle(
                                fontFamily: 'Josefin',
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )),
                        ),
                      )
                    ]),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  SizedBox(
                    width: 100.w,
                    height: 100.h,
                    child: Stack(children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset(
                          'assets/images/category_img.jpg',
                          fit: BoxFit.cover,
                          width: 100.w,
                          height: 100.h,
                        ),
                      ),
                      BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
                        child: Container(
                          width: 100.w,
                          height: 100.h,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  const Color.fromARGB(255, 3, 81, 184)
                                      .withOpacity(0.7),
                                  const Color.fromARGB(255, 11, 61, 128)
                                      .withOpacity(0.7),
                                  const Color.fromARGB(255, 54, 244, 171)
                                      .withOpacity(0.5),
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                              ),
                              borderRadius: BorderRadius.circular(10.0)),
                          child: const Center(
                              child: Text(
                            'Maxican',
                            style: TextStyle(
                                fontFamily: 'Josefin',
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )),
                        ),
                      )
                    ]),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            Row(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    padding: EdgeInsets.only(left: 18.w),
                    child: const Text(
                      'Friends',
                      style: TextStyle(
                          fontFamily: 'Josefin',
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(
                  width: 170.w,
                ),
                const Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'See all (36)',
                    style: TextStyle(
                        fontFamily: 'Josefin',
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(top: 15.h),
              width: 320.0.w,
              height: 60.0.h,
              child: Align(
                alignment: Alignment.centerLeft,
                child: AvatarStack(
                  settings: settings2,
                  avatars: [
                    for (var n = 0; n < 20; n++) NetworkImage(getAvatarUrl(n))
                  ],
                ),
              ),
            ),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: const Color.fromARGB(255, 86, 99, 255),
            child: const Icon(
              Icons.add,
              size: 35,
            )),
        bottomNavigationBar: _navbar);
  }
}

String getAvatarUrl(int n) {
  final url = 'https://i.pravatar.cc/150?img=$n';
  // final url = 'https://robohash.org/$n?bgset=bg1';
  return url;
}
