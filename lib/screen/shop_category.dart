import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/model/category.dart';
import 'package:food_app/screen/start.dart';
import 'package:food_app/screen/start2.dart';
import 'package:food_app/widget/product.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ShopCategory extends StatefulWidget {
  const ShopCategory({super.key, required this.index});
  final int index;
  @override
  State<ShopCategory> createState() => _ShopCategoryState();
}

class _ShopCategoryState extends State<ShopCategory>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late PageController _pageController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 9, vsync: this);
    _pageController = PageController(initialPage: widget.index);

    _tabController.index = widget.index;

    _pageController.addListener(() {
      if (!_tabController.indexIsChanging) {
        _tabController.animateTo(_pageController.page!.round());
      }
    });

    _tabController.addListener(() {
      if (!_tabController.indexIsChanging) {
        _pageController.animateToPage(
          _tabController.index,
          duration: Duration(milliseconds: 300),
          curve: Curves.ease,
        );
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(children: [
            ClipRRect(
              child: Image.asset(
                'assets/images/img_shop13.jpg',
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width,
                height: 100.h,
              ),
            ),
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 100.h,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 252, 158, 104).withOpacity(0.7),
                      Colors.red.withOpacity(0.5),
                      Colors.pink.withOpacity(0.5),
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
                child: Column(children: [
                  Expanded(
                    child: TabBar(
                      physics: const NeverScrollableScrollPhysics(),
                      controller: _tabController,
                      indicatorColor: Colors.transparent,
                      indicatorSize: TabBarIndicatorSize.tab,
                      labelColor: Colors.white,
                      isScrollable: true,
                      labelPadding: const EdgeInsets.only(right: 25),
                      unselectedLabelColor: const Color(0xFFCDCDCD),
                      tabs: list_category.map((cat) {
                        return Builder(builder: (BuildContext context) {
                          return Tab(
                              child: SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: 100.h,
                            child: Center(
                              child: Text(
                                cat.name,
                                style: const TextStyle(
                                    fontFamily: 'Josefin', fontSize: 21.0),
                              ),
                            ),
                          ));
                        });
                      }).toList(),
                    ),
                  ),
                ]),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: InkWell(
                onTap: () => Navigator.of(context).pop(),
                child: const Icon(
                  Icons.chevron_left_outlined,
                  color: Colors.white,
                  size: 50,
                ),
              ),
            ),
            Center(
              child: Container(
                padding: EdgeInsets.only(top: 80.h),
                child: SmoothPageIndicator(
                  controller: _pageController,
                  count: 9,
                  effect: WormEffect(
                    activeDotColor: Colors.white,
                    dotColor: Colors.white.withOpacity(0.4),
                    spacing: 8.0,
                    dotWidth: 16.0, // Độ rộng của dots
                    dotHeight: 8.0, // Độ cao của dots
                  ),
                ),
              ),
            )
          ]),
          SizedBox(
            height: MediaQuery.of(context).size.height - 50.0,
            width: double.infinity,
            child: PageView(
              controller: _pageController, // Sử dụng cùng một controller
              children: const [
                Product(),
                Product(),
                Product(),
                Product(),
                Product(),
                Product(),
                Product(),
                Product(),
                Product()
              ],
            ),
          )
        ],
      ),
    );
  }
}
