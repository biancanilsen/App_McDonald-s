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
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.network(
                    'https://media-exp1.licdn.com/dms/image/C4D03AQHIdGNgNhA0Aw/profile-displayphoto-shrink_200_200/0/1586011039730?e=2147483647&v=beta&t=fgspTeg6E9sfvn8QGNnnwX5fNpmzHwvtDxON8Yz9-TA'),
              ),
              accountName: Text('Danilo'),
              accountEmail: Text('danilo@hotmail.com'),
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
      appBar: AppBar(
        title: const Text("McDonald's"),
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
                    padding: const EdgeInsets.all(8),
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/images/quarteirão.png'),
                    )),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Quarteirão com queijo',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          "R\$ 12,90",
                          style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        )
                      ],
                    )),
                Container(
                    alignment: Alignment.bottomCenter,
                    padding: const EdgeInsets.all(8),
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/images/cheeseburguer.png'),
                    )),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Cheeseburguer',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          "R\$ 10,70",
                          style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        )
                      ],
                    )),
                Container(
                    alignment: Alignment.bottomCenter,
                    padding: const EdgeInsets.all(8),
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/images/fritas.png'),
                    )),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Mcfritas pequena',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          "R\$ 6,50",
                          style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        )
                      ],
                    )),
                Container(
                    alignment: Alignment.bottomCenter,
                    padding: const EdgeInsets.all(8),
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/images/coca-cola-300ml.png'),
                    )),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Free refil 300ml',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          "R\$ 10,00",
                          style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        )
                      ],
                    )),
                Container(
                    alignment: Alignment.bottomCenter,
                    padding: const EdgeInsets.all(8),
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/images/mc-nifico-bacon.png'),
                    )),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Hamburguer',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          "R\$ 13,20",
                          style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        )
                      ],
                    )),
                Container(
                    alignment: Alignment.bottomCenter,
                    padding: const EdgeInsets.all(8),
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/images/molho-barbecue.png'),
                    )),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Molho-barbecue',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          "R\$ 4,80",
                          style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        )
                      ],
                    )),
                Container(
                    alignment: Alignment.bottomCenter,
                    padding: const EdgeInsets.all(8),
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/images/mc-fritas-media.png'),
                    )),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Mcfritas média',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          "R\$ 8,90",
                          style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        )
                      ],
                    )),
                Container(
                    alignment: Alignment.bottomCenter,
                    padding: const EdgeInsets.all(8),
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/images/mc-flurry-laka.png'),
                    )),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Top sundae caramelo',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          "R\$ 11,50",
                          style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
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
