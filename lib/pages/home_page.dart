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
              accountName: Text('João'),
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
            ListTile(
              leading: Icon(Icons.sell),
              title: Text('Cupons'),
              onTap: () {
                Navigator.of(context).pushNamed('/coupon');
              },
            ),
            SizedBox(height: 400),
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
              itemBuilder: (context, index) => Card(
                color: Colors.orange[200],
                margin: const EdgeInsets.all(15),
                child: ListTile(
                    title: Text(_items[index]['name']),
                    // subtitle: Text(_items[index]['price']),
                    trailing: SizedBox(
                      width: 100,
                      child: Row(
                        children: [
                          // IconButton(
                          //   icon: const Icon(Icons.edit),
                          //   onPressed: () => _showForm(_journals[index]['id']),
                          // ),
                          // IconButton(
                          //   icon: const Icon(Icons.delete),
                          //   onPressed: () =>
                          //       _deleteItem(_journals[index]['id']),
                          // ),
                        ],
                      ),
                    )),
              ),
            ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => _refreshItems(),
      ),
    );
  }
}
