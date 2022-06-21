import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:primeiro_projeto/register_page.dart';

import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String senha = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                onChanged: (text) {
                  email = text;
                },
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    labelText: 'Email', border: OutlineInputBorder()),
              ),
              SizedBox(height: 10),
              TextField(
                  onChanged: (text) {
                    senha = text;
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: 'Senha', border: OutlineInputBorder())),
              SizedBox(height: 15),
              RaisedButton(
                onPressed: () {
                  if (email == 'teste@teste' && senha == '123') ;
                  Navigator.of(context).pushNamed('/home');
                  print('Login realizado com sucesso');
                },
                child: Text('Entrar'),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
