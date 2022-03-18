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
            child: GridView.builder(
          itemCount: listGambar.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4, // Jumlah Kolom
            childAspectRatio: 1, // Rasio Panjang dan Lebar
            crossAxisSpacing: 10, // Jarak kiri kanan
            mainAxisSpacing: 10, // Jarak Atas bawah
          ),
          itemBuilder: (context, index) => Container(
            height: 100,
            color: Colors.red,
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
