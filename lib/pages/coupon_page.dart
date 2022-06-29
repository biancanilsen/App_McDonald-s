import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';


import '../controllers/app_controller.dart';

class CouponPage extends StatefulWidget {
  const CouponPage({Key? key}) : super(key: key);

  @override
  State<CouponPage> createState() => _CouponPageState();
}

class _CouponPageState extends State<CouponPage> {
  final TextEditingController _controladorNome = TextEditingController();
  final TextEditingController _controladorQuantidade = TextEditingController();
  final TextEditingController _controladorValorTotal = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        title: const Text("Cupons desconto"),
      ),
      body: Container(
          child: CustomScrollView(
        primary: false,
        slivers: <Widget>[
          SliverPadding(
            padding: const EdgeInsets.all(20),
            sliver: SliverGrid.count(
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: <Widget>[
                Container(
                    alignment: Alignment.bottomCenter,
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/images/coupon_1.png'),
                    )),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        RaisedButton(
                          color: (Colors.green[600]),
                          onPressed: () {
                            Navigator.of(context).pushNamed('/home');
                            print('Login realizado com sucesso');
                          },
                          child: Text('Comprar'),
                        )
                      ],
                    )),
                Container(
                    alignment: Alignment.bottomCenter,
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/images/coupon_2.png'),
                    )),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        RaisedButton(
                          color: (Colors.green[600]),
                          onPressed: () {
                            Navigator.of(context).pushNamed('/home');
                            print('Login realizado com sucesso');
                          },
                          child: Text('Comprar'),
                        )
                      ],
                    )),
                Container(
                    alignment: Alignment.bottomCenter,
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/images/coupon_3.png'),
                    )),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        RaisedButton(
                          color: (Colors.green[600]),
                          onPressed: () {
                            Navigator.of(context).pushNamed('/home');
                            print('Login realizado com sucesso');
                          },
                          child: Text('Comprar'),
                        )
                      ],
                    )),
                Container(
                    alignment: Alignment.bottomCenter,
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/images/coupon_4.png'),
                    )),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        RaisedButton(
                          color: (Colors.green[600]),
                          onPressed: () {
                            Navigator.of(context).pushNamed('/home');
                            print('Login realizado com sucesso');
                          },
                          child: Text('Comprar'),
                        )
                      ],
                    )),
                Container(
                    alignment: Alignment.bottomCenter,
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/images/coupon_5.png'),
                    )),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        RaisedButton(
                          color: (Colors.green[600]),
                          onPressed: () {
                            Navigator.of(context).pushNamed('/home');
                            print('Login realizado com sucesso');
                          },
                          child: Text('Comprar'),
                        )
                      ],
                    )),
                Container(
                    alignment: Alignment.bottomCenter,
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/images/coupon_6.png'),
                    )),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        RaisedButton(
                          color: (Colors.green[600]),
                          onPressed: () {
                            Navigator.of(context).pushNamed('/home');
                            print('Login realizado com sucesso');
                          },
                          child: Text('Comprar'),
                        )
                      ],
                    )),
                Container(
                    alignment: Alignment.bottomCenter,
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/images/coupon_7.png'),
                    )),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        RaisedButton(
                          color: (Colors.green[600]),
                          onPressed: () {
                            Navigator.of(context).pushNamed('/home');
                            print('Login realizado com sucesso');
                          },
                          child: Text('Comprar'),
                        )
                      ],
                    )),
                Container(
                    alignment: Alignment.bottomCenter,
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/images/coupon_8.png'),
                    )),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        RaisedButton(
                          color: (Colors.green[600]),
                          onPressed: () {
                            Navigator.of(context).pushNamed('/home');
                            print('Login realizado com sucesso');
                          },
                          child: Text('Comprar'),
                        )
                      ],
                    )),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
