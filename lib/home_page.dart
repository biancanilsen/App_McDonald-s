import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Naturell Alimentos'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.teal),
              child: Text(
                'Painel',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
                leading: Icon(Icons.app_registration),
                title: Text('Cadastro de produto'),
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/register');
                }),
            ListTile(
              leading: Icon(Icons.request_page),
              title: Text('Pedido'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/request');
              },
            ),
          ],
        ),
      ),
    );
  }
}
