import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/model/category.dart';
import 'package:food_app/screen/shop_category.dart';

class ListCategory extends StatefulWidget {
  const ListCategory({super.key});

  @override
  State<ListCategory> createState() => _ListCategoryState();
}

class _ListCategoryState extends State<ListCategory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: IconButton(
                      onPressed: () => Navigator.of(context).pop(),
                      icon: const Icon(Icons.chevron_left_outlined,
                          color: Colors.black, size: 50),
                    ),
                  ),
                ),
                const Expanded(
                  flex: 2,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Category',
                      style: TextStyle(
                          fontFamily: 'Josefin',
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      onPressed: () => Navigator.of(context).pop(),
                      icon: const Icon(Icons.search_outlined,
                          color: Colors.black, size: 40),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.w, right: 15.w),
              child: Column(
                  children: list_category.map((cat) {
                return Builder(builder: (BuildContext context) {
                  return Column(children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 60.h,
                      child: Stack(children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset(
                            cat.img,
                            fit: BoxFit.cover,
                            width: MediaQuery.of(context).size.width,
                            height: 60.h,
                          ),
                        ),
                        BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
                          child: InkWell(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ShopCategory(
                                          index: cat.id,
                                        ))),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 60.h,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: cat.colors,
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0)),
                              child: Center(
                                  child: Text(
                                cat.name,
                                style: const TextStyle(
                                    fontFamily: 'Josefin',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )),
                            ),
                          ),
                        )
                      ]),
                    ),
                    SizedBox(
                      height: 15.h,
                    )
                  ]);
                });
              }).toList()),
            )
          ],
        ),
      )),
    );
  }
}
