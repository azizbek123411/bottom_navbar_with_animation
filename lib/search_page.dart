import 'package:flutter/material.dart';
class MySearchpage extends StatefulWidget {
  static const String id="search_page";
  const MySearchpage({Key? key}) : super(key: key);

  @override
  State<MySearchpage> createState() => _MySearchpageState();
}

class _MySearchpageState extends State<MySearchpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search Page"),
      ),
    );
  }
}
