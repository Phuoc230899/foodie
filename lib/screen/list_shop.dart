import 'package:avatar_stack/avatar_stack.dart';
import 'package:avatar_stack/positions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/home.dart';
import 'package:food_app/model/shop.dart';
import 'package:food_app/screen/filter_page.dart';
import 'package:food_app/widget/clipper.dart';

class Shops extends StatefulWidget {
  const Shops({super.key});

  @override
  State<Shops> createState() => _ShopsState();
}

class _ShopsState extends State<Shops> {
  final settings = RestrictedAmountPositions(
    maxAmountItems: 4,
    maxCoverage: 0.3,
    minCoverage: 0.1,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        SizedBox(height: 40.h),
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
              const Expanded(
                flex: 2,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Treding Restaurant',
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
        ),
        Expanded(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  floating: true,
                  shadowColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        15.0), // Đặt độ cong của góc để tạo viền tròn
                  ),
                  backgroundColor: Colors.transparent,
                  flexibleSpace: Padding(
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
                                      builder: (context) =>
                                          const FilterPage()));
                            },
                            backgroundColor: Colors.white,
                            shape: const CircleBorder(),
                            elevation: 0,
                            child: const Icon(
                              Icons.filter_list_sharp,
                              color: Colors.grey,
                            ),
                          ),
                          hintText: 'Search',
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
                ),
                SliverPadding(
                  padding: EdgeInsets.only(left: 10.w, right: 10.w),
                  sliver: SliverList(
                    delegate: SliverChildBuilderDelegate(
                      childCount: 2,
                      (BuildContext context, int index) {
                        // Tạo và trả về các phần tử con (Widget) ở đây
                        return Column(
                          children: listShops.map((item) {
                            return Builder(
                              builder: (BuildContext context) {
                                return InkWell(
                                  onTap: () {
                                    // Navigator.of(context)
                                    //     .push(MaterialPageRoute(builder: (context) {
                                    //   return const ShopDetailPage();
                                    // }));
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
                                                            BorderRadius
                                                                .circular(10),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.all(5.w),
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
                                                                          FontWeight
                                                                              .bold),
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
                                                                          FontWeight
                                                                              .bold),
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
                                                            BorderRadius
                                                                .circular(10),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.all(5.w),
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
                                                                      left:
                                                                          12.w),
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
                                                                    radius: 12,
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
                                                            child: AvatarStack(
                                                              settings:
                                                                  settings,
                                                              width: 80.w,
                                                              height: 50.h,
                                                              avatars: [
                                                                for (var n = 0;
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
        )
      ]),
    );
  }
}
