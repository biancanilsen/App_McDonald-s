import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:primeiro_projeto/controllers/app_controller.dart';

import '../database/sql_helper.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<CartPage> {
  List<Map<String, dynamic>> _items = [];

  bool _cartIsEmpity = true;
  double total = 0.0;
  int counter = 0;
  int valor = 0;

  void _refreshItems() async {
    final data = await SQLHelper.getCartItem();
    setState(() {
      _items = data;
      _cartIsEmpity = false;
    });
  }

  @override
  void initState() {
    super.initState();
    _refreshItems(); // Loading the diary when the app starts
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carrinho de compras'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: _cartIsEmpity
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: _items.length,
                itemBuilder: (context, index) => Container(
                  height: 70,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    alignment: Alignment.bottomLeft,
                    image: AssetImage(_items[index]['image']),
                  )),
                  margin: const EdgeInsets.all(17),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 120.0,
                    ),
                    child: Row(
                      children: [
                        OutlinedButton(
                          onPressed: () async {
                            var value = _items[index]['qtd'].toInt();
                            value--;
                            var price = value * _items[index]['price'];

                            await _updateItem(
                                _items[index]['id'], value, 1, price);

                            total = total - _items[index]['price'];

                            if (_items[index]['qtd'] <= 1) {
                              var buy = 0;
                              _deleteCartItem(_items[index]['id'], buy);
                            }
                          },
                          child: const Text('-'),
                        ),
                        OutlinedButton(
                          onPressed: () {
                            debugPrint('Received click');
                          },
                          child: Text(_items[index]['qtd'].toString()),
                        ),
                        OutlinedButton(
                          onPressed: () async {
                            var value = _items[index]['qtd'].toInt();
                            value++;
                            var price = value * _items[index]['price'];

                            await _updateItem(
                                _items[index]['id'], value, 1, price);

                            total = total + _items[index]['price'];
                          },
                          child: const Text('+'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

        // SingleChildScrollView(
        //     child: Column(
        //       children: [
        //         Column(
        //           mainAxisAlignment: MainAxisAlignment.center,
        //           children: <Widget>[
        //             Container(
        //                 height: 150,
        //                 width: 360,
        //                 // color: Colors.red,
        //                 child: Row(
        //                   children: [
        //                     Container(
        //                         height: 100,
        //                         width: 150,
        //                         decoration: BoxDecoration(
        //                             image: DecorationImage(
        //                           alignment: Alignment.bottomCenter,
        //                           image: AssetImage(
        //                               'assets/images/quarteirão.png'),
        //                         ))),
        //                     // Container(
        //                     OutlinedButton(
        //                       onPressed: () {
        //                         setState(() {
        //                           counter--;
        //                         });
        //                       },
        //                       child: const Text('-'),
        //                     ),
        //                     OutlinedButton(
        //                       onPressed: () {
        //                         debugPrint('Received click');
        //                       },
        //                       child: Text('$counter'),
        //                     ),
        //                     OutlinedButton(
        //                       onPressed: () {
        //                         setState(() {
        //                           counter++;
        //                         });
        //                       },
        //                       child: const Text('+'),
        //                     ),
        //                   ],
        //                 )),
        //             SizedBox(height: 10),
        // RaisedButton(
        //     shape: RoundedRectangleBorder(
        //         borderRadius: BorderRadius.circular(12.0),
        //         side: BorderSide(color: Colors.yellow)),
        //     // crossAxisAlignment: CrossAxisAlignment.stretch,
        //     color: (Colors.yellow[600]),
        //     onPressed: () async {
        //       await _addItem();
        //     },
        //     child: Container(
        //       width: double.infinity,
        //       height: 50,
        //       child: Center(
        //           child: Text(
        //         'Total: R\$ $valor',
        //         style: TextStyle(
        //           fontWeight: FontWeight.bold,
        //           fontSize: 18,
        //         ),
        //       )),
        //     )),
        //             SizedBox(height: 400),
        //             RaisedButton(
        //                 shape: RoundedRectangleBorder(
        //                     borderRadius: BorderRadius.circular(12.0),
        //                     side: BorderSide(color: Colors.green)),
        //                 // crossAxisAlignment: CrossAxisAlignment.stretch,
        //                 color: (Colors.green[600]),
        // onPressed: () => showDialog<String>(
        //       context: context,
        //       builder: (BuildContext context) =>
        //           AlertDialog(
        //         title: const Text(
        //             'Pedido realizado com sucesso!'),
        //         content:
        //             const Text('Receba em seu endereço.'),
        //         actions: <Widget>[
        //           TextButton(
        //             onPressed: () =>
        //                 Navigator.pop(context, 'Cancel'),
        //             child: const Text('Ok'),
        //           ),
        //         ],
        //       ),
        //     ),
        //                 child: Container(
        //                   width: double.infinity,
        //                   height: 50,
        //                   child: Center(
        //                       child: Text(
        //                     'Finalizar pedido e pagar pelo app',
        //                     style: TextStyle(
        //                       fontWeight: FontWeight.bold,
        //                       fontSize: 18,
        //                     ),
        //                   )),
        //                 )),
        //           ],
        //         ),
        //       ],
        //     ),
        //   ),
      ),
      bottomNavigationBar: BottomAppBar(
          color: Colors.red,
          child: Container(
              height: 40,
              margin: const EdgeInsets.only(left: 20.0, top: 10.0),
              child: Text(
                'R\$ ' + total.toStringAsFixed(2),
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ))),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            title: const Text('Pedido realizado com sucesso!'),
            content: const Text('Receba em seu endereço.'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.pop(context, 'Cancel'),
                child: const Text('Ok'),
              ),
            ],
          ),
        ),
        label: const Text('     Finalizar pedido e pagar na entrega     '),
        icon: const Icon(Icons.thumb_up),
        backgroundColor: Colors.green[700],
      ),
    );
  }

  // Future<void> _deleteItem(int id, int buy) async {
  //   print('DELETADO');
  //   await SQLHelper.deleteItem(
  //     id,
  //   );

  //   _refreshItems();
  // }

  Future<void> _deleteCartItem(int id, int buy) async {
    print('DELETADO');
    await SQLHelper.updateCartItems(id, buy);

    _refreshItems();
  }

  Future<void> _updateItem(int id, int qtd, int buy, double totalPrice) async {
    await SQLHelper.updateItem(id, qtd, buy, totalPrice);

    _refreshItems();
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
