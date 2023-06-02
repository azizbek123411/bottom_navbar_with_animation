import 'package:bottom_navbar_with_animation/account_page.dart';
import 'package:bottom_navbar_with_animation/bottomnavbar.dart';
import 'package:bottom_navbar_with_animation/home_page.dart';
import 'package:bottom_navbar_with_animation/my_explore_page.dart';
import 'package:bottom_navbar_with_animation/search_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyNavBar(),
      routes: {
        HomePage.id: (context) =>const  HomePage(),
        MyNavBar.id:(context)=> const MyNavBar(),
        MyAccontpage.id:(context)=>const MyAccontpage(),
        MySearchpage.id:(context)=>const MySearchpage(),
        MyExplorePage.id:(context)=>const MyExplorePage(),
      },
    );
  }
}
