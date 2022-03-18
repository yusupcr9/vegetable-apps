import 'package:flutter/material.dart';
import 'package:vegetable_apps/presentation/menu_list.dart';

void main() {
  runApp(const AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MenuList(),
    );
  }
}
