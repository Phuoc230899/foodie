import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:food_app/screen/forgot_pass.dart';
import 'package:food_app/screen/register.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final bool _isLoading = false;
  final Widget _forgotPass = ForgotPage();
  final Widget _register = RegisterPage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Image.asset(
              'assets/images/login.jpg',
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
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.1,
                    ),
                    const Text(
                      'FoodieDelight',
                      style: TextStyle(
                          fontFamily: 'Josefin',
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.2,
                          left: MediaQuery.of(context).size.width / 10,
                          right: MediaQuery.of(context).size.width / 8),
                      child: Column(
                        textDirection: TextDirection.ltr,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextField(
                            textAlign: TextAlign.center,
                            textInputAction: TextInputAction.next,
                            onEditingComplete: () =>
                                FocusScope.of(context).nextFocus(),
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
                              focusedBorder: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                borderSide: BorderSide.none,
                              ),
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
                          const SizedBox(
                            height: 16,
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
                          const SizedBox(
                            height: 10,
                          ),
                          Align(
                              alignment: Alignment.centerRight,
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => _forgotPass,
                                      ));
                                },
                                child: const Text(
                                  'Quên Mật Khẩu ?',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontFamily: 'Josefin',
                                      fontWeight: FontWeight.w500),
                                ),
                              )),
                          SizedBox(
                              height: MediaQuery.of(context).size.height * 0.1),
                          ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                            child: SizedBox(
                              width: 329,
                              height: 56,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Color.fromARGB(255, 86, 99, 255),
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
                                        'Sign In',
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
                            height: MediaQuery.of(context).size.height * 0.2,
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => _register));
                                },
                                child: const Text(
                                  'Tạo Tài Khoản Mới',
                                  style: TextStyle(
                                      fontFamily: 'Josefin',
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontStyle: FontStyle.italic,
                                      decoration: TextDecoration.underline),
                                )),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
