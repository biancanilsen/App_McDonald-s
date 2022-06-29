import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:primeiro_projeto/controllers/app_controller.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carrinho de compras'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                    height: 150,
                    width: 360,
                    color: Colors.red,
                    child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                      alignment: Alignment.centerLeft,
                      image: AssetImage('assets/images/quarteirão.png'),
                    )))),
                SizedBox(height: 10),
                Container(
                    height: 150,
                    width: 360,
                    color: Colors.red,
                    child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                      alignment: Alignment.centerLeft,
                      image: AssetImage('assets/images/quarteirão.png'),
                    )))),
                SizedBox(height: 10),
                Container(
                    height: 150,
                    width: 360,
                    color: Colors.red,
                    child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                      alignment: Alignment.centerLeft,
                      image: AssetImage('assets/images/quarteirão.png'),
                    )))),
                SizedBox(height: 10),
                Container(
                    height: 150,
                    width: 360,
                    color: Colors.red,
                    child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                      alignment: Alignment.centerLeft,
                      image: AssetImage('assets/images/quarteirão.png'),
                    )))),
                SizedBox(height: 10),
                Container(
                    height: 150,
                    width: 360,
                    color: Colors.red,
                    child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                      alignment: Alignment.centerLeft,
                      image: AssetImage('assets/images/quarteirão.png'),
                    )))),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.of(context).pushNamed('/home');
        },
      ),
    );
  }
}

class Produto {
  final String nome;
  final int quantidade;
  final double valor;

  Produto(
    this.nome,
    this.quantidade,
    this.valor,
  );

  @override
  String toString() {
    return 'Produto{nome: $nome, quantidade: $quantidade, valor: $valor}';
  }
}
