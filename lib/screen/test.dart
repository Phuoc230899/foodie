import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/screen/start.dart';
import 'package:food_app/screen/start2.dart';
import 'package:food_app/widget/product.dart';

class tesst extends StatefulWidget {
  const tesst({super.key});

  @override
  State<tesst> createState() => _SryState();
}

class _SryState extends State<tesst>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
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
                  child: Container(),
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
          SizedBox(
            height: MediaQuery.of(context).size.height - 50.0,
            width: double.infinity,
            child: TabBarView(
                controller: _tabController,
                children: const [Product(), Product(), Product()]),
          )
        ],
      ),
    );
  }
}
