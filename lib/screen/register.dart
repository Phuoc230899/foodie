import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/screen/login_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final bool _isLoading = false;
  final Widget _login = LoginPage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
          child: Stack(
        children: [
          Image.asset(
            'assets/images/register.jpg',
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Colors.black.withOpacity(0.4),
              child: Column(children: [
                SizedBox(
                  height: 60.h,
                ),
                Stack(children: [
                  Container(
                    width: 150,
                    height: 150,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: const CircleAvatar(
                      backgroundColor: Colors.grey,
                      backgroundImage: AssetImage('assets/images/avatar.png'),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue,
                      ),
                      child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.add_outlined,
                            color: Colors.white,
                          )),
                    ),
                  )
                ]),
                SizedBox(
                  height: 50.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30.w, right: 30.w),
                  child: Column(children: [
                    TextField(
                      textAlign: TextAlign.center,
                      textInputAction: TextInputAction.next,
                      onEditingComplete: () => FocusScope.of(context).nextFocus(),
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontFamily: 'Josefin',
                          fontWeight: FontWeight.w500),
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.person_outline,
                          color: Colors.white,
                        ),
                        hintText: 'Name',
                        filled: true,
                        fillColor: Colors.grey.withOpacity(0.5),
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
                    SizedBox(
                      height: 16.h,
                    ),
                    TextField(
                      textAlign: TextAlign.center,
                      textInputAction: TextInputAction.next,
                      onEditingComplete: () => FocusScope.of(context).nextFocus(),
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontFamily: 'Josefin',
                          fontWeight: FontWeight.w500),
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.email_outlined,
                          color: Colors.white,
                        ),
                        hintText: 'Email',
                        filled: true,
                        fillColor: Colors.grey.withOpacity(0.5),
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
                    SizedBox(
                      height: 16.h,
                    ),
                    TextField(
                      obscureText: true,
                      textAlign: TextAlign.center,
                      textInputAction: TextInputAction.next,
                      onEditingComplete: () => FocusScope.of(context).nextFocus(),
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontFamily: 'Josefin',
                          fontWeight: FontWeight.w500),
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.password_outlined,
                          color: Colors.white,
                        ),
                        hintText: 'Password',
                        filled: true,
                        fillColor: Colors.grey.withOpacity(0.5),
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
                    SizedBox(
                      height: 16.h,
                    ),
                    TextField(
                      obscureText: true,
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
                          Icons.password_outlined,
                          color: Colors.white,
                        ),
                        hintText: 'Confirm Password',
                        filled: true,
                        fillColor: Colors.grey.withOpacity(0.5),
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
                    SizedBox(
                      height: 60.h,
                    ),
                    ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      child: SizedBox(
                        width: 329,
                        height: 56,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 86, 99, 255),
                          ),
                          child: _isLoading
                              ? Container(
                                  width: 24,
                                  height: 24,
                                  padding: const EdgeInsets.all(2.0),
                                  child: const CircularProgressIndicator(
                                    color: Colors.white,
                                    strokeWidth: 3,
                                  ),
                                )
                              : const Text(
                                  'Register',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 100.h,
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => _login));
                              },
                              child: const Text(
                                'Already have an account?',
                                style: TextStyle(
                                  fontFamily: 'Josefin',
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontStyle: FontStyle.italic,
                                ),
                              )),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => _login));
                            },
                            child: const Text(
                              'Login',
                              style: TextStyle(
                                color: Color.fromARGB(255, 86, 99, 255),
                                fontFamily: 'Josefin',
                                fontSize: 20,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ]),
                ),
              ]),
            ),
          )
        ],
      )),
    );
  }
}
