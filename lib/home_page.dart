import 'package:flutter/material.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: Colors.orange,
        child: const Text(
          "WelCome To Food App...",
          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28,),
        ),
      ),
    );
  }
}
