import 'package:avatar_stack/avatar_stack.dart';
import 'package:avatar_stack/positions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/home.dart';
import 'package:food_app/model/shop.dart';
import 'package:food_app/screen/shop_detail.dart';
import 'package:food_app/widget/clipper.dart';

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    final settings = RestrictedAmountPositions(
      maxAmountItems: 4,
      maxCoverage: 0.3,
      minCoverage: 0.1,
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 10.h),
          child: Column(
            children: listShops.map((item) {
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
                          height: 200.h,
                          // margin: const EdgeInsets.symmetric(horizontal: 5.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                                          Expanded(
                                            flex: 2,
                                            child: Container(
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
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Container(
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
                                          ),
                                          SizedBox(
                                            width: 10.w,
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Container(
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
        ),
      ),
    );
  }
}
