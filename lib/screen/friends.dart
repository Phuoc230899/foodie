import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/model/friends.dart';

class FriendsPage extends StatefulWidget {
  const FriendsPage({super.key});

  @override
  State<FriendsPage> createState() => _FriendsPageState();
}

class _FriendsPageState extends State<FriendsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(children: [
                  Row(
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
                flex: 1,
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Friends',
                    style: TextStyle(
                        fontFamily: 'Josefin',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.search_outlined,
                        color: Colors.black, size: 40),
                  ),
                ),
              ),
            ],
                  ),
                  SizedBox(
            height: 10.h,
                  ),
                  Container(
            width: MediaQuery.of(context).size.width,
            height: 40.h,
            color: Colors.grey.withOpacity(0.2),
            child: Container(
              padding: EdgeInsets.only(left: 15.w),
              child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Contacts",
                    style: TextStyle(
                        fontFamily: 'Josefin',
                        fontSize: 15,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  )),
            ),
                  ),
                  SizedBox(
            height: 10.h,
                  ),
                  Padding(
            padding: EdgeInsets.only(left: 10.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: list_contacts.map((contact) {
                return Builder(builder: (BuildContext context) {
                  return Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 0,
                            child: ClipOval(
                                child: Image.asset(
                              contact.img,
                              fit: BoxFit.cover,
                              width: 40.w,
                              height: 40.h,
                            )),
                          ),
                          Expanded(
                            flex: 4,
                            child: Padding(
                              padding: EdgeInsets.only(left: 10.w),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            contact.name,
                                            style: const TextStyle(
                                                fontFamily: 'Josefin',
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          padding: EdgeInsets.only(right: 20.w),
                                          child: Align(
                                            alignment: Alignment.centerRight,
                                            child: Container(
                                              width: 70.w,
                                              height: 20.h,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10.0),
                                                  color: contact.followed
                                                      ? Colors.white
                                                      : const Color.fromARGB(
                                                          255, 86, 99, 255),
                                                  border: contact.followed
                                                      ? Border.all(
                                                          color: Colors.black)
                                                      : null),
                                              child: Padding(
                                                padding: EdgeInsets.all(5.w),
                                                child: Center(
                                                  child: Text(
                                                    contact.followed
                                                        ? 'Unfollow'
                                                        : 'Follow',
                                                    style: TextStyle(
                                                        fontFamily: 'Josefin',
                                                        color: contact.followed
                                                            ? Colors.grey
                                                            : Colors.white,
                                                        fontSize: 12),
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
                                    padding: EdgeInsets.only(right: 10.w),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        '${contact.reviews.toString()} Reviews',
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
                        height: 20.h,
                      ),
                    ],
                  );
                });
              }).toList(),
            ),
                  ),
                  SizedBox(
            height: 10.h,
                  ),
                  Container(
            width: MediaQuery.of(context).size.width,
            height: 40.h,
            color: Colors.grey.withOpacity(0.2),
            child: Container(
              padding: EdgeInsets.only(left: 15.w),
              child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Suggetions",
                    style: TextStyle(
                        fontFamily: 'Josefin',
                        fontSize: 15,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  )),
            ),
                  ),
                  SizedBox(
            height: 10.h,
                  ),
                  Padding(
            padding: EdgeInsets.only(left: 10.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: list_suggetions.map((sug) {
                return Builder(builder: (BuildContext context) {
                  return Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 0,
                            child: ClipOval(
                                child: Image.asset(
                              sug.img,
                              fit: BoxFit.cover,
                              width: 40.w,
                              height: 40.h,
                            )),
                          ),
                          Expanded(
                            flex: 4,
                            child: Padding(
                              padding: EdgeInsets.only(left: 10.w),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            sug.name,
                                            style: const TextStyle(
                                                fontFamily: 'Josefin',
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          padding: EdgeInsets.only(right: 20.w),
                                          child: Align(
                                            alignment: Alignment.centerRight,
                                            child: Container(
                                              width: 70.w,
                                              height: 20.h,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                color: const Color.fromARGB(
                                                    255, 86, 99, 255),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(5.w),
                                                child: const Center(
                                                  child: Text(
                                                    'Follow',
                                                    style: TextStyle(
                                                        fontFamily: 'Josefin',
                                                        color: Colors.white,
                                                        fontSize: 12),
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
                                    padding: EdgeInsets.only(right: 10.w),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        '${sug.reviews.toString()} Reviews',
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
                        height: 20.h,
                      ),
                    ],
                  );
                });
              }).toList(),
            ),
                  ),
                ]),
          )),
    );
  }
}
