import 'dart:ui';

import 'package:avatar_stack/avatar_stack.dart';
import 'package:avatar_stack/positions.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/model/shop.dart';
import 'package:food_app/screen/filter_page.dart';
import 'package:food_app/screen/friends.dart';
import 'package:food_app/screen/homepage.dart';
import 'package:food_app/screen/list_category.dart';
import 'package:food_app/screen/list_shop.dart';
import 'package:food_app/screen/profile.dart';
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
  int _currentPage = 0;
  PageController _pageController = PageController(initialPage: 0);

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

  final List<Widget> _pages = [
    HomePage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    final Widget _navbar = NavbarWidget(
      currentPage: _currentPage,
      onTabTapped: (index) {
        _pageController.animateToPage(
          index,
          duration: Duration(milliseconds: 300),
          curve: Curves.ease,
        );
      },
    );
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: PageView(
          controller: _pageController,
          children: _pages,
          onPageChanged: (index) {
            setState(() {
              _currentPage = index;
            });
          },
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
