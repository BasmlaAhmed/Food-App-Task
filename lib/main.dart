import 'package:flutter/material.dart';
import 'package:food_app/home_screen.dart';
import 'package:food_app/single_item_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/" : (context) => const HomeScreen(),
        "SingleItemPage" : (context) => const SingleItemPage()
      },
    );
  }
}
