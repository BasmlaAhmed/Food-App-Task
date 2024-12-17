import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/widgets/single_item_nav_bar.dart';

class SingleItemPage extends StatelessWidget {
  const SingleItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 35, 34, 34),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(top: 25, left: 15, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(Icons.arrow_back_ios,
                      color: Colors.white, size: 30),
                ),
                const InkWell(
                  child: Icon(CupertinoIcons.cart_fill,
                      color: Colors.white, size: 30),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Image.asset(
                "images/bg.png",
                height: MediaQuery.of(context).size.height / 1.7,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Hot & Fresh Burger",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5)),
                            child: const Icon(
                              CupertinoIcons.minus,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(width: 8),
                          const Text(
                            "2",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(width: 8),
                          Container(
                            alignment: Alignment.center,
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5)),
                            child: const Icon(
                              CupertinoIcons.plus,
                              color: Colors.black,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "We bring you the burger with cheese We bring you the burger with cheese We bring you the burger with cheese We bring you the burger with cheese",
                  style: TextStyle(
                      color: Color.fromARGB(155, 255, 255, 255), fontSize: 12),
                )
              ],
            ),
          ],
        ),
      )),
      bottomNavigationBar: SingleItemNavBar(),
    );
  }
}
