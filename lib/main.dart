import 'package:flutter/material.dart';
import 'package:intro_app/home_page.dart';
import 'package:intro_screen_onboarding_flutter/intro_app.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const Intro_Page(),
        'Home_Page': (context) => const Home_Page(),
      },
    ),
  );
}

class Intro_Page extends StatefulWidget {
  const Intro_Page({Key? key}) : super(key: key);

  @override
  State<Intro_Page> createState() => _Intro_PageState();
}

class _Intro_PageState extends State<Intro_Page> {
   List<Introduction> list = [
    Introduction(
      titleTextStyle: const TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
      ),
      subTitleTextStyle: const TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 18,
      ),
      title: "Fresh & Best Food",
      subTitle:
          " the term Burger is used to describe a popular sandwich made from ground meats that are formed into a patty, cooked.",
      imageUrl: "images/bargar.png",
    ),
    Introduction(
      titleTextStyle: const TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
      ),
      subTitleTextStyle: const TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 18,
      ),
      title: "fast & free delivery",
      subTitle:
          "Retail food delivery is a courier service in which a restaurant, store, or independent food-delivery company delivers food to a customer.",
      imageUrl: "images/delivery.png",
    ),
    Introduction(
      titleTextStyle: const TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
      ),
      subTitleTextStyle: const TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 18,
      ),
      title: "PayMeant",
      subTitle:
          "A payment method is a way that customers pay for a product or service. In a brick-and-mortar store, accepted payment methods may include cash.",
      imageUrl: "images/payment.png",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return IntroScreenOnboarding(
      foregroundColor: Colors.orange.shade800,
      skipTextStyle: const TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
      backgroudColor: Colors.orange,
      introductionList: list,
      onTapSkipButton: () {
        Navigator.of(context).pushReplacementNamed("Home_Page");
      },
    );
  }
}
