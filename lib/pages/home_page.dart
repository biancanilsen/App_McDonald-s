import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../database/sql_helper.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> _items = [];
  bool _isLoading = true;
  // This function is used to fetch all data from the database
  void _refreshItems() async {
    final data = await SQLHelper.getItems();
    setState(() {
      _items = data;
      _isLoading = false;
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
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.network(
                    // 'https://media-exp1.licdn.com/dms/image/C4D03AQHIdGNgNhA0Aw/profile-displayphoto-shrink_200_200/0/1586011039730?e=2147483647&v=beta&t=fgspTeg6E9sfvn8QGNnnwX5fNpmzHwvtDxON8Yz9-TA'),
                    'https://png.pngtree.com/png-vector/20190710/ourlarge/pngtree-user-vector-avatar-png-image_1541962.jpg'),
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
            ),
            // ListTile(
            //   leading: Icon(Icons.sell),
            //   title: Text('Cupons'),
            //   onTap: () {
            //     Navigator.of(context).pushNamed('/coupon');
            //   },
            // ),
            SizedBox(height: 470),
            ListTile(
              // contentPadding: ,
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
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  side: BorderSide(color: Colors.red)),
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              color: (Colors.red),
              onPressed: () async {
                await _addItem();
              },
              child: Container(
                width: 10,
                height: 10,
                child: Center(
                    child: Text(
                  '-',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 2,
                  ),
                )),
              )),
          RaisedButton(
            color: (Colors.red),
            onPressed: () {
              Navigator.of(context).pushNamed('/cart');
            },
            child: Icon(Icons.shopping_cart, color: (Colors.white)),
          )
        ],
      ),
      body: _isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: _items.length,
              itemBuilder: (context, index) => Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                  alignment: Alignment.bottomLeft,
                  image: AssetImage(_items[index]['image']),
                )),
                margin: const EdgeInsets.all(17),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 85.0,
                  ),
                  child: ListTile(
                      title: Text(
                        _items[index]['name'],
                      ),
                      subtitle: Text(
                        'R\$ ' + _items[index]['price'].toStringAsFixed(2),
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      trailing: SizedBox(
                        width: 100,
                        child: Row(
                          children: [
                            RaisedButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                  side: BorderSide(color: Colors.green)),
                              color: (Colors.green[600]),
                              onPressed: () async {
                                var buy = 1;

                                await _updateItem(_items[index]['id'], 1, buy,
                                    _items[index]['price']);

                                Navigator.of(context).pushNamed('/cart');

                                if (_items[index]['qtd'] >= 1) {
                                  var value = _items[index]['qtd'].toInt();
                                  value++;
                                  _refreshItems();
                                }
                              },
                              child: Text('Comprar'),
                              // onPressed: () => _showForm(_journals[index]['id']),
                            ),
                          ],
                        ),
                      )),
                ),
              ),
            ),
    );
  }

  Future<void> _updateItem(int id, int qtd, int buy, double totalPrice) async {
    print('TESTE');
    await SQLHelper.updateItem(id, qtd, buy, totalPrice);

    _refreshItems();
  }

  Future<void> _addItem() async {
    await SQLHelper.createItem('Sundae Caramelo', 11.50,
        'assets/images/sundae-caramelo.png', 0, 0, 11.50);
    _refreshItems();
  }
}
