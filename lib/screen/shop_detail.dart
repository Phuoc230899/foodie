import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/model/shop.dart';
import 'package:food_app/model/user_comment.dart';
import 'package:food_app/screen/gridview_image.dart';
import 'package:food_app/screen/list_review_page.dart';
import 'package:food_app/screen/review_page.dart';
import 'package:food_app/widget/clipper.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key, required this.item});
  final Shop? item;

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  late Shop item;
  late List images;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    item = widget.item!;
    images = item.images;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
              flex: 1,
              child: Stack(
                children: [
                  Image.asset(
                    item.imageUrl,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10.w, top: 30.h),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: InkWell(
                                onTap: () => Navigator.of(context).pop(),
                                child: const Icon(
                                  Icons.chevron_left_outlined,
                                  color: Colors.white,
                                  size: 40,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 180.w,
                          ),
                          Expanded(
                              child: Align(
                            alignment: Alignment.topRight,
                            child: Row(
                              children: [
                                const Icon(Icons.share_outlined,
                                    color: Colors.white, size: 30),
                                SizedBox(
                                  width: 15.w,
                                ),
                                const Icon(Icons.bookmark_outline,
                                    color: Colors.white, size: 30),
                              ],
                            ),
                          ))
                        ]),
                  )
                ],
              )),
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.only(right: 10.w, left: 10.w, top: 20.h),
              child: SingleChildScrollView(
                child: Column(children: [
                  Expanded(
                      flex: 0,
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Column(children: [
                          Row(
                            children: [
                              Container(
                                  padding: EdgeInsets.only(left: 12.w),
                                  child: Text(
                                    item.name,
                                    style: const TextStyle(
                                        fontFamily: 'Josefin',
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
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
                                    borderRadius: BorderRadius.circular(10.0),
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
                                            fontWeight: FontWeight.bold),
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
                                    color:
                                        const Color.fromARGB(255, 86, 99, 255),
                                    borderRadius: BorderRadius.circular(10.0),
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
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  )),
                              SizedBox(
                                width: 70.w,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.grey.withOpacity(0.4),
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
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 10.w, left: 10.w),
                            child: Text(
                              item.address,
                              style: const TextStyle(
                                  fontFamily: 'Josefin',
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                            ),
                          ),
                          SizedBox(
                            height: 5.w,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding:
                                    EdgeInsets.only(right: 10.w, left: 10.w),
                                child: const Text.rich(TextSpan(children: [
                                  TextSpan(
                                      text: 'Open Now',
                                      style: TextStyle(
                                          fontFamily: 'Josefin',
                                          color: Colors.red)),
                                  TextSpan(
                                      text: ' daily time ',
                                      style: TextStyle(
                                        fontFamily: 'Josefin',
                                      )),
                                  TextSpan(
                                      text: ' 9:30 am to 11:00 pm',
                                      style: TextStyle(
                                          fontFamily: 'Josefin',
                                          color: Colors.red))
                                ]))),
                          )
                        ]),
                      )),
                  SizedBox(
                    height: 20.h,
                  ),
                  Column(children: [
                    Row(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            padding: EdgeInsets.only(left: 10.w),
                            child: const Text(
                              'Menu & Photos',
                              style: TextStyle(
                                  fontFamily: 'Josefin',
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 110.w,
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          GridViewImage(images: images)));
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
                      items: images.map((item) {
                        return Builder(
                          builder: (BuildContext context) {
                            return InkWell(
                              onTap: () {},
                              child: Card(
                                elevation: 5.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      15.0), // Đặt độ cong của góc để tạo viền tròn
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15.0),
                                  child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15.0)),
                                      width: MediaQuery.of(context).size.width,
                                      // margin: const EdgeInsets.symmetric(horizontal: 5.0),
                                      child: Image.asset(
                                        item,
                                        fit: BoxFit.cover,
                                      )),
                                ),
                              ),
                            );
                          },
                        );
                      }).toList(),
                    ),
                  ]),
                  SizedBox(
                    height: 20.h,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              padding: EdgeInsets.only(left: 10.w),
                              child: const Text(
                                'Review & Rating',
                                style: TextStyle(
                                    fontFamily: 'Josefin',
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 100.w,
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const ListReview()));
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
                        height: 10.h,
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
                                          width: 30.w,
                                          height: 30.h,
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
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Text(
                                                        cmt.name,
                                                        style: const TextStyle(
                                                            fontFamily:
                                                                'Josefin',
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Container(
                                                      padding: EdgeInsets.only(
                                                          right: 20.w),
                                                      child: Align(
                                                        alignment: Alignment
                                                            .centerRight,
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                            color: Colors.grey
                                                                .withOpacity(
                                                                    0.4),
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
                                                                    size: 10,
                                                                  ),
                                                                  SizedBox(
                                                                    width: 5.w,
                                                                  ),
                                                                  Text(
                                                                    cmt.rate.toString(),
                                                                    style: const TextStyle(
                                                                        color: Colors
                                                                            .black,
                                                                        fontWeight:
                                                                            FontWeight.bold),
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
                                                padding: EdgeInsets.only(
                                                    right: 10.w),
                                                child: Align(
                                                  alignment:
                                                      Alignment.centerLeft,
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
                                    height: 10.h,
                                  ),
                                ],
                              );
                            });
                          }).toList(),
                        ),
                      ),
                    ],
                  )
                ]),
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          )
        ],
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const ReviewPage())));
                    },
                    child: const Center(
                      child: Text(
                        'Rate Your Experience',
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
