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
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      height: 150,
                      width: 360,
                      color: Colors.red,
                      child: Row(
                        children: [
                          Container(
                              height: 100,
                              width: 150,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                alignment: Alignment.bottomRight,
                                image:
                                    AssetImage('assets/images/quarteirão.png'),
                              ))),
                          RaisedButton(
                            color: (Colors.green),
                            onPressed: () {
                              Navigator.of(context).pushNamed('/cart');
                            },
                            child: Icon(Icons.shopping_cart,
                                color: (Colors.white)),
                          )
                        ],
                      )),
                  SizedBox(height: 10),
                ],
              ),
            ],
          ),
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
