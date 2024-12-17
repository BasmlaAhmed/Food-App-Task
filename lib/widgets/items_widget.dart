import 'package:flutter/material.dart';
import 'package:food_app/single_item_page.dart';

class ItemsWidget extends StatelessWidget {
  const ItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 2,
        shrinkWrap: true,
        childAspectRatio: 0.7,
        children: [
          for (int i = 1; i <= 4; i++)
            Container(
              padding: const EdgeInsets.all(8),
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color.fromARGB(255, 35, 34, 34),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.4),
                        spreadRadius: 1,
                        blurRadius: 8)
                  ]),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const SingleItemPage()));
                    },
                    child: Container(
                        margin: const EdgeInsets.all(10),
                        child: Image.asset(
                          "images/$i.png",
                          height: 100,
                          fit: BoxFit.cover,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        "Cheese Burger",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      "Hot Burger",
                      style: TextStyle(
                        color: Color.fromARGB(164, 255, 255, 255),
                        fontSize: 13,
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        child: Text(
                          "\$355",
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      InkWell(
                          child: Icon(
                        Icons.shopping_cart,
                        color: Colors.white,
                        size: 15,
                       )
                      ),
                    ],
                  )
                ],
              ),
            )
        ]
      );
  }
}
