import 'dart:async';

import 'package:checklist/src/data/database_repository.dart';
import 'package:checklist/src/data/mock_database.dart';
// ignore: unused_import
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsDatabase implements DatabaseRepository {
  // attributes

  // constructor

  // methodes
  @override
  Future<List<String>> getItems() async {
    return itemsList;
  }

  @override
  Future<void> removeItem(String item) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove(item);
  }

  @override
  Future<void> storeItem(String item) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('item', item);
  }
}
