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
  int counter = 0;
  int valor = 0;

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
                      // color: Colors.red,
                      child: Row(
                        children: [
                          Container(
                              height: 100,
                              width: 150,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                alignment: Alignment.bottomCenter,
                                image:
                                    AssetImage('assets/images/quarteirão.png'),
                              ))),
                          // Container(
                          OutlinedButton(
                            onPressed: () {
                              setState(() {
                                counter--;
                              });
                            },
                            child: const Text('-'),
                          ),
                          OutlinedButton(
                            onPressed: () {
                              debugPrint('Received click');
                            },
                            child: Text('$counter'),
                          ),
                          OutlinedButton(
                            onPressed: () {
                              setState(() {
                                counter++;
                              });
                            },
                            child: const Text('+'),
                          ),
                        ],
                      )),
                  SizedBox(height: 10),
                  RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          side: BorderSide(color: Colors.yellow)),
                      // crossAxisAlignment: CrossAxisAlignment.stretch,
                      color: (Colors.yellow[600]),
                      onPressed: () {},
                      child: Container(
                        width: double.infinity,
                        height: 50,
                        child: Center(
                            child: Text(
                          'Total: R\$ $valor',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        )),
                      )),
                  SizedBox(height: 300),
                  RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          side: BorderSide(color: Colors.green)),
                      // crossAxisAlignment: CrossAxisAlignment.stretch,
                      color: (Colors.green[600]),
                      onPressed: () => showDialog<String>(
                            context: context,
                            builder: (BuildContext context) => AlertDialog(
                              title: const Text('Pedido realizado com sucesso'),
                              content: const Text('Receba em seu endereço'),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () =>
                                      Navigator.pop(context, 'Cancel'),
                                  child: const Text('Ok'),
                                ),
                              ],
                            ),
                          ),
                      child: Container(
                        width: double.infinity,
                        height: 50,
                        child: Center(
                            child: Text(
                          'Finalizar pedido e pagar pelo app',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        )),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.add),
      //   onPressed: () {
      //     Navigator.of(context).pushNamed('/home');
      //   },
      // ),
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
