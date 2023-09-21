import 'package:avatar_stack/avatar_stack.dart';
import 'package:avatar_stack/positions.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/model/shop.dart';
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
                      onPressed: () {},
                      backgroundColor: Colors.white,
                      shape: CircleBorder(),
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
                    padding: EdgeInsets.only(left: 15.w),
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
                const Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'See all (45)',
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
            CarouselSlider(
              options: CarouselOptions(
                  height: 200.h,
                  enableInfiniteScroll: false,
                  viewportFraction: 0.9),
              items: listShops.map((item) {
                return Builder(
                  builder: (BuildContext context) {
                    return Card(
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
                                    ClipPath(
                                      clipper: MyClipper(),
                                      child: Image.asset(
                                        item.imageUrl,
                                        fit: BoxFit.cover,
                                        width: double.infinity,
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
                                                gradient: const RadialGradient(
                                                    colors: [
                                                      Colors.red,
                                                      Colors.yellow,
                                                      Colors.pink,
                                                      Colors.orange
                                                    ],
                                                    center: Alignment.center,
                                                    radius: 12,
                                                    focalRadius: 12),
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                              child: Align(
                                                alignment: Alignment.center,
                                                child: Text(
                                                  item.category,
                                                  style: const TextStyle(
                                                      color: Colors.white,
                                                      fontFamily: 'Josefin',
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.bold),
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
                                                    BorderRadius.circular(10.0),
                                              ),
                                              child: Align(
                                                alignment: Alignment.center,
                                                child: Text(
                                                  item.category,
                                                  style: const TextStyle(
                                                      color: Colors.white,
                                                      fontFamily: 'Josefin',
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              )),
                                          SizedBox(
                                            width: 20.w,
                                          ),
                                          Container(
                                            width: 90.0.w,
                                            height: 20.0.h,
                                            // color: Colors.red,
                                            child: AvatarStack(
                                              settings: settings,
                                              width: 80.w,
                                              height: 50.h,
                                              avatars: [
                                                for (var n = 0; n < 20; n++)
                                                  NetworkImage(getAvatarUrl(n))
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ]))
                            ],
                          )),
                    );
                  },
                );
              }).toList(),
            )
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
