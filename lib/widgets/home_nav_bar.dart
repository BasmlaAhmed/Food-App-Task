import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeNavBar extends StatelessWidget {
  const HomeNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 60,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 35, 34, 34),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.4),
                spreadRadius: 1,
                blurRadius: 8)
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(CupertinoIcons.mail_solid, color: Colors.white, size: 30),
          const Icon(CupertinoIcons.heart_fill, color: Colors.white, size: 30),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Color(0xFFEFB322),
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                      color: Colors.white.withOpacity(0.4),
                      spreadRadius: 2,
                      blurRadius: 6)
                ]),
            child:
                Icon(CupertinoIcons.cart_fill, color: Colors.white, size: 30),
          ),
          const Icon(CupertinoIcons.bell_fill, color: Colors.white, size: 30),
          const Icon(CupertinoIcons.person_fill, color: Colors.white, size: 30),
        ],
      ),
    );
  }
}
