import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:voca_voca_app/screens/home_screen.dart';


class PageViewScreen extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _PageViewScreenState createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> {
  int _index = 0;
  PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,

          body: PageView(
            onPageChanged: (value){
              setState(() {
                _index = value;
              });

            },
          controller: _controller,
          children: [
            HomeScreen(),
            HomeScreen(),
            HomeScreen(),
            HomeScreen(),

          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingNavbar(
          selectedBackgroundColor: Colors.white,
          selectedItemColor: Colors.deepPurple,
          backgroundColor: Colors.deepPurple,
          onTap: (int val) => setState(() {
            _index = val;
            _controller.animateToPage(val, duration: Duration(milliseconds: 400), curve: Curves.decelerate);}),
          currentIndex: _index,
          items: [
            FloatingNavbarItem(icon: Icons.home, title: 'Home'),
            FloatingNavbarItem(icon: Icons.explore, title: 'Explore'),
            FloatingNavbarItem(icon: Icons.chat_bubble_outline, title: 'Chats'),
            FloatingNavbarItem(icon: Icons.settings, title: 'Settings'),
          ],
        ),
    );
  }
}