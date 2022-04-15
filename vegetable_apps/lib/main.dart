import 'package:flutter/material.dart';
import 'package:vegetable_apps/presentation/menu_list/menu_list_page.dart';
import 'package:vegetable_apps/presentation/sign_in/sign_in_page.dart';

void main() {
  runApp(const AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SignInPage(),
    );
  }
}
