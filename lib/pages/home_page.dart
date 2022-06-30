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
              title: Text(
                'R. XV de Novembro, 1480 - Centro, Blumenau - SC',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 11,
                ),
              ),
              onTap: () {
                Navigator.of(context).pushNamed('/');
              },
            ),
            ListTile(
              leading: Icon(Icons.sell),
              title: Text('Cupons'),
              onTap: () {
                Navigator.of(context).pushNamed('/coupon');
              },
            ),
            SizedBox(height: 320),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              onTap: () {
                Navigator.of(context).pushNamed('/');
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text("McDonald's"),
        actions: [
          RaisedButton(
            color: (Colors.red),
            onPressed: () {
              Navigator.of(context).pushNamed('/cart');
            },
            child: Icon(Icons.shopping_cart, color: (Colors.white)),
          )
        ],
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
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, "/cart");
                          },
                          child: Text("Quarteirão com queijo"),
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
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, "/cart");
                          },
                          child: Text("Cheeseburguer"),
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
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, "/cart");
                          },
                          child: Text("Mcfritas pequena"),
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
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, "/cart");
                          },
                          child: Text("Free refil 300ml"),
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
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, "/cart");
                          },
                          child: Text("Hamburguer"),
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
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, "/cart");
                          },
                          child: Text("Molho barbecue"),
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
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, "/cart");
                          },
                          child: Text("Mcfritas média"),
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
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, "/cart");
                          },
                          child: Text("Top sundae caramelo"),
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
