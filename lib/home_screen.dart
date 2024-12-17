import 'package:flutter/material.dart';
import 'package:food_app/widgets/home_nav_bar.dart';
import 'package:food_app/widgets/items_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 35, 34, 34),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(child: Icon(Icons.sort, color: Colors.white)),
                  InkWell(
                    child: Icon(Icons.search, color: Colors.white),
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    textAlign: TextAlign.left,
                    "Hot & Fast Food",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 2),
                    child: Text(
                      textAlign: TextAlign.left,
                      "Delivers on Time",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(142, 255, 255, 255)),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 30),
            TabBar(
              isScrollable: true,
              labelStyle: TextStyle(fontSize: 20),
              labelPadding: EdgeInsets.symmetric(horizontal: 10),
              tabs: [
                Tab(text: "Burger"),
                Tab(text: "Pizza"),
                Tab(text: "cheese"),
                Tab(text: "Pasta"),
              ],
            ),
            Flexible(
                flex: 1,
                child: TabBarView(children: [
                  ItemsWidget(),
                  ItemsWidget(),
                  ItemsWidget(),
                  ItemsWidget(),
                ]
              )
            )
          ],
        ),
        bottomNavigationBar: HomeNavBar(),
      ),
    );
  }
}
