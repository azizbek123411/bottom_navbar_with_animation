import 'package:bottom_navbar_with_animation/account_page.dart';
import 'package:bottom_navbar_with_animation/home_page.dart';
import 'package:bottom_navbar_with_animation/my_explore_page.dart';
import 'package:bottom_navbar_with_animation/search_page.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class MyNavBar extends StatefulWidget {
  static const String id = "nav_bar";

  const MyNavBar({Key? key}) : super(key: key);

  @override
  State<MyNavBar> createState() => _MyNavBarState();
}

class _MyNavBarState extends State<MyNavBar> {
  int _currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        children: const [
          HomePage(),
          MySearchpage(),
          MyExplorePage(),
          MyAccontpage(),
        ],
      ),
      bottomNavigationBar: SalomonBottomBar(
        items: [
          SalomonBottomBarItem(
            selectedColor: Colors.purple,
            icon: const Icon(Icons.home_outlined),
            title: const Text("Home"),
          ),
          SalomonBottomBarItem(
            selectedColor: Colors.deepPurple,
            icon: const Icon(Icons.search),
            title: const Text("Search"),
          ),
          SalomonBottomBarItem(
            selectedColor: Colors.deepPurpleAccent,
            icon: const Icon(Icons.explore_outlined),
            title: const Text("Explore"),
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.person_2_outlined),
            title: const Text("Account"),
          ),
        ],
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            _pageController.animateToPage(_currentIndex,
                duration: const Duration(milliseconds: 300),
                curve: Curves.elasticIn);
          });
        },
      ),
    );
  }
}
