import 'package:flutter/material.dart';
class MyAccontpage extends StatefulWidget {
  static const String id="account_page";
  const MyAccontpage({Key? key}) : super(key: key);

  @override
  State<MyAccontpage> createState() => _MyAccontpageState();
}

class _MyAccontpageState extends State<MyAccontpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Account Page"),
      ),
    );
  }
}
