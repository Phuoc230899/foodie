import 'package:flutter/material.dart';
import 'package:animated_introduction/animated_introduction.dart';
import 'package:food_app/home.dart';
import 'package:introduction_screen/introduction_screen.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IntroductionScreen(
      pages: [
        PageViewModel(
            title: "Hi! Welcome to Foodie App",
            bodyWidget: Center(
              child: Expanded(
                  child: Text(
                'Khám phá thế giới ẩm thực qua đầu bếp của bạn với ứng dụng đồ ăn tuyệt vời này. Tìm kiếm, nấu và thưởng thức những món ăn ngon ngất ngây!',
                style: TextStyle(
                    fontFamily: 'Josefin',
                    color: Colors.grey.shade500,
                    shadows: [
                      Shadow(
                        color: Colors.grey.withOpacity(0.5),
                        blurRadius: 5,
                        offset: const Offset(1, 1),
                      )
                    ]),
                textAlign: TextAlign.center,
              )),
            ),
            image: Image.asset(
              'assets/images/img_start.jpg',
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
            )),
        PageViewModel(
            title: "Hi! Welcome to Foodie App",
            bodyWidget: Center(
              child: Expanded(
                  child: Text(
                'Chúc bạn có bữa ăn ngon miệng và ngập tràn hạnh phúc với ứng dụng chúng tôi!',
                style: TextStyle(
                    fontFamily: 'Josefin',
                    color: Colors.grey.shade500,
                    shadows: [
                      Shadow(
                        color: Colors.grey.withOpacity(0.5),
                        blurRadius: 5,
                        offset: const Offset(1, 1),
                      )
                    ]),
                textAlign: TextAlign.center,
              )),
            ),
            image: Image.asset(
              'assets/images/img_start2.jpg',
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
            ))
      ],
      onDone: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => const Home())),
      showSkipButton: true,
      showNextButton: true,
      nextFlex: 1,
      dotsFlex: 2,
      animationDuration: 1000,
      curve: Curves.fastOutSlowIn,
      dotsDecorator: DotsDecorator(
          spacing: const EdgeInsets.all(5),
          activeColor: const Color.fromARGB(255, 86, 99, 255),
          // activeSize: Size.square(10),
          // size: Size.square(5),
          activeSize: const Size(20, 10),
          size: const Size.square(10),
          activeShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
      skip: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 86, 99, 255),
            borderRadius: BorderRadius.circular(40),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade300,
                  blurRadius: 10,
                  offset: const Offset(4, 4))
            ]),
        child: const Center(
          child: Text(
            "Skip",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      next: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            border: Border.all(
                color: const Color.fromARGB(255, 86, 99, 255), width: 2)),
        child: const Center(
          child: Icon(
            Icons.navigate_next,
            size: 30,
            color: Color.fromARGB(255, 86, 99, 255),
          ),
        ),
      ),
      done: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 86, 99, 255),
            borderRadius: BorderRadius.circular(40),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade300,
                  blurRadius: 40,
                  offset: Offset(4, 4))
            ]),
        child: const Center(
          child: Text(
            "Done",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    ));
  }
}
