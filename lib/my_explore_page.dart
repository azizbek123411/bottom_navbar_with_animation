import 'package:flutter/material.dart';
class MyExplorePage extends StatefulWidget {
  static const String id="explore_page";
  const MyExplorePage({Key? key}) : super(key: key);

  @override
  State<MyExplorePage> createState() => _MyExplorePageState();
}

class _MyExplorePageState extends State<MyExplorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Explore Page"),
      ),
    );
  }
}
