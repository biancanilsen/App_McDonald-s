import 'package:flutter/material.dart';

import 'package:primeiro_projeto/app_controller.dart';
import 'package:primeiro_projeto/login_page.dart';
import 'package:primeiro_projeto/register_page.dart';
import 'package:primeiro_projeto/request_page.dart';

import 'home_page.dart';

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
              '/register': (context) => RegisterPage(),
              '/request': (context) => RequestPage(),
            });
      },
    );
  }
}
