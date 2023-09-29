import 'package:flutter/material.dart';
import 'package:food_app/screen/profile.dart';

class NavbarWidget extends StatelessWidget {
  const NavbarWidget(
      {super.key, required this.currentPage, required this.onTabTapped});

  final int currentPage;
  final ValueChanged<int> onTabTapped;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 50.0,
              width: MediaQuery.of(context).size.width / 2 - 40.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: const Icon(Icons.home_outlined),
                    onPressed: () => onTabTapped(0),
                    color: currentPage == 0
                        ? const Color.fromARGB(255, 86, 99, 255)
                        : Colors.grey,
                  ),
                  const Icon(
                    Icons.bookmark_outline_outlined,
                    color: Color(0xFF676E79),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 50.0,
              width: MediaQuery.of(context).size.width / 2 - 40.0,
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Icon(
                    Icons.notifications_outlined,
                    color: Color(0xFF676E79),
                  ),
                  IconButton(
                    icon: const Icon(Icons.person_outline),
                    onPressed: () => onTabTapped(1),
                    color: currentPage == 1
                        ? const Color.fromARGB(255, 86, 99, 255)
                        : Colors.grey,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
