import 'package:flutter/material.dart';
import 'package:vegetable_apps/presentation/item_detail/item_detail_page.dart';

class MenuListPage extends StatefulWidget {
  const MenuListPage({Key? key}) : super(key: key);

  @override
  State<MenuListPage> createState() => _MenuListPageState();
}

class _MenuListPageState extends State<MenuListPage> {
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
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) =>
                      ItemDetailPage(gambar: listGambar[index]),
                ),
              );
            },
            child: ListImageItem(listGambar: listGambar[index]),
          ),
        )),
      ),
    );
  }
}

class ListImageItem extends StatelessWidget {
  const ListImageItem({
    Key? key,
    required this.listGambar,
  }) : super(key: key);

  final String listGambar;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.red,
      child: Image.asset(
        listGambar,
        fit: BoxFit.cover,
      ),
    );
  }
}
