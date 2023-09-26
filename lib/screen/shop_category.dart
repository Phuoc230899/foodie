import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/screen/start.dart';
import 'package:food_app/screen/start2.dart';
import 'package:food_app/widget/product.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ShopCategory extends StatefulWidget {
  const ShopCategory({super.key});

  @override
  State<ShopCategory> createState() => _ShopCategoryState();
}

class _ShopCategoryState extends State<ShopCategory>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late PageController _controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _controller = PageController(initialPage: 0);

    _tabController.addListener(() {
      if (_tabController.indexIsChanging) {
        _controller.animateToPage(
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
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(children: [
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 252, 158, 104).withOpacity(0.7),
                  Colors.red.withOpacity(0.5),
                  Colors.pink.withOpacity(0.5),
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              )),
              width: MediaQuery.of(context).size.width,
              height: 100.h,
              child: TabBar(
                controller: _tabController,
                indicatorColor: Colors.transparent,
                indicatorSize: TabBarIndicatorSize.tab,
                labelColor: const Color(0xFFC88D67),
                isScrollable: true,
                labelPadding: const EdgeInsets.only(right: 25),
                unselectedLabelColor: const Color(0xFFCDCDCD),
                tabs: [
                  Tab(
                      child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 100.h,
                    child: const Center(
                      child: Text(
                        'Cake Slice',
                        style: TextStyle(fontFamily: 'Varela', fontSize: 21.0),
                      ),
                    ),
                  )),
                  Tab(
                      child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 100.h,
                    child: const Center(
                      child: Text(
                        '2',
                        style: TextStyle(fontFamily: 'Varela', fontSize: 21.0),
                      ),
                    ),
                  )),
                  Tab(
                      child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 100.h,
                    child: const Center(
                      child: Text(
                        '3',
                        style: TextStyle(fontFamily: 'Varela', fontSize: 21.0),
                      ),
                    ),
                  )),
                ],
              ),
            ),
            Center(
              child: Container(
                padding: EdgeInsets.only(top: 80.h),
                child: SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                ),
              ),
            )
          ]),
          SizedBox(
            height: MediaQuery.of(context).size.height - 50.0,
            width: double.infinity,
            child: TabBarView(
              controller: _tabController,
              children: [
              PageView(
                controller: _controller, // Sử dụng cùng một controller
                children: [Product(), Product(), Product()],
              ),
            ]),
          )
        ],
      ),
    );
  }
}
