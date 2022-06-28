import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:primeiro_projeto/pages/cart_page.dart';

import '../controllers/app_controller.dart';

class RequestPage extends StatefulWidget {
  const RequestPage({Key? key}) : super(key: key);

  @override
  State<RequestPage> createState() => _RequestPageState();
}

class _RequestPageState extends State<RequestPage> {
  final TextEditingController _controladorNome = TextEditingController();
  final TextEditingController _controladorQuantidade = TextEditingController();
  final TextEditingController _controladorValorTotal = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pedido'),
        actions: [
          CustomSwitch(),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _controladorNome,
              decoration: InputDecoration(
                  labelText: 'Nome', border: OutlineInputBorder()),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: TextField(
                controller: _controladorQuantidade,
                decoration: InputDecoration(
                    labelText: 'Quantidade', border: OutlineInputBorder()),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: TextField(
                controller: _controladorValorTotal,
                decoration: InputDecoration(
                    labelText: 'Valor a pagar', border: OutlineInputBorder()),
                keyboardType: TextInputType.text,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: RaisedButton(
                color: Colors.green,
                child: Text('Gerar NF'),
                onPressed: () {
                  final String nome = _controladorNome.text;
                  final int? quantidade =
                      int.tryParse(_controladorQuantidade.text);
                  final double? valor =
                      double.tryParse(_controladorValorTotal.text);

                  final Produto produtoNovo =
                      Produto(nome, quantidade!, valor!);
                  print(produtoNovo);
                },
              ),
            ),
          ],
        ),
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

class CustomSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.isDartTheme,
      onChanged: (value) {
        AppController.instance.changeTheme();
      },
    );
  }
}
