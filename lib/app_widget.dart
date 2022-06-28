import 'package:flutter/material.dart';

import 'package:primeiro_projeto/controllers/app_controller.dart';
import 'package:primeiro_projeto/pages/login_page.dart';
import 'package:primeiro_projeto/pages/cart_page.dart';
import 'package:primeiro_projeto/pages/request_page.dart';

import 'pages/home_page.dart';

// ignore: use_key_in_widget_constructors
class AppWidget extends StatelessWidget {
  get builder => null;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
            theme: ThemeData(
              primarySwatch: Colors.red,
              brightness: AppController.instance.isDartTheme
                  ? Brightness.dark
                  : Brightness.light,
            ),
            routes: {
              '/': (context) => LoginPage(),
              '/home': (context) => HomePage(),
              '/cart': (context) => CartPage(),
              '/request': (context) => RequestPage(),
            });
      },
    );
  }
}
