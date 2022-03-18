import 'package:flutter/material.dart';

class MenuList extends StatefulWidget {
  const MenuList({Key? key}) : super(key: key);

  @override
  State<MenuList> createState() => _MenuListState();
}

class _MenuListState extends State<MenuList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        // ignore: avoid_unnecessary_containers
        child: Container(
            child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) => Container(
            height: 100,
            color: Colors.red,
            margin: const EdgeInsets.only(top: 10),
            child: Image.asset(
              "assets/images/food.jpg",
              fit: BoxFit.cover,
            ),
          ),
        )),
      ),
    );
  }
}
