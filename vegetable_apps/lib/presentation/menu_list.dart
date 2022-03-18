import 'package:flutter/material.dart';

class MenuList extends StatefulWidget {
  const MenuList({Key? key}) : super(key: key);

  @override
  State<MenuList> createState() => _MenuListState();
}

class _MenuListState extends State<MenuList> {
  List<String> listGambar = [
    "assets/images/food.jpg",
    "assets/images/food1.jpg",
    "assets/images/food2.jpg",
    "assets/images/food3.jpg",
    "assets/images/food.jpg",
    "assets/images/food1.jpg",
    "assets/images/food2.jpg",
    "assets/images/food3.jpg",
    "assets/images/food.jpg",
    "assets/images/food1.jpg",
    "assets/images/food2.jpg",
    "assets/images/food3.jpg",
    "assets/images/food.jpg",
    "assets/images/food1.jpg",
    "assets/images/food2.jpg",
    "assets/images/food3.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        // ignore: avoid_unnecessary_containers
        child: Container(
            child: ListView.builder(
          itemCount: listGambar.length,
          itemBuilder: (context, index) => Container(
            height: 100,
            color: Colors.red,
            margin: const EdgeInsets.only(top: 10),
            child: Image.asset(
              listGambar[index],
              fit: BoxFit.cover,
            ),
          ),
        )),
      ),
    );
  }
}
