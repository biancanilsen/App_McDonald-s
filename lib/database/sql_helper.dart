import 'package:sqflite/sqflite.dart' as sql;
import 'package:flutter/foundation.dart';

class SQLHelper {
  static Future<void> createTables(sql.Database database) async {
    await database.execute("""CREATE TABLE items(
        id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        name TEXT,
        price REAL,
        totalPrice REAL,
        image TEXT,
        qtd INTEGER,  
        buy INTEGER,
        createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
      )
      """);
  }

  static Future<sql.Database> db() async {
    return sql.openDatabase(
      'mac.db',
      version: 1,
      onCreate: (sql.Database database, int version) async {
        await createTables(database);
      },
    );
  }

  static Future<int> createItem(String name, double price, String image,
      int qtd, int buy, double totalPrice) async {
    final db = await SQLHelper.db();

    final data = {
      'name': name,
      'price': price,
      'image': image,
      'buy': buy,
      'qtd': qtd,
      'totalPrice': totalPrice
    };
    final id = await db.insert('items', data,
        conflictAlgorithm: sql.ConflictAlgorithm.replace);
    return id;
  }

  static Future<List<Map<String, dynamic>>> getItems() async {
    final db = await SQLHelper.db();
    return db.query('items', orderBy: "id");
  }

  static Future<List<Map<String, dynamic>>> getItem(int id) async {
    final db = await SQLHelper.db();
    return db.query('items', where: "id = ?", whereArgs: [id], limit: 1);
  }

  static Future<List<Map<String, dynamic>>> getCartItem() async {
    final db = await SQLHelper.db();
    return db.query('items', where: "buy = 1", orderBy: "id");
  }

  static Future<int> updateItem(
      int id, int qtd, int buy, double totalPrice) async {
    final db = await SQLHelper.db();

    final data = {'qtd': qtd, 'buy': buy, 'totalPrice': totalPrice};

    final result =
        await db.update('items', data, where: "id = ?", whereArgs: [id]);
    return result;
  }

  static Future<int> updateCartItems(int id, int qtd) async {
    final db = await SQLHelper.db();

    final data = {
      'buy': 0,
      'qtd': qtd,
    };

    final result =
        await db.update('items', data, where: "id = ?", whereArgs: [id]);
    return result;
  }

  static Future<void> deleteItem(int id) async {
    final db = await SQLHelper.db();
    try {
      await db.delete("items", where: "id = ?", whereArgs: [id]);
    } catch (err) {
      debugPrint("Something went wrong when deleting an item: $err");
    }
  }
}
