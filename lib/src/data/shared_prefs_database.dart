import 'dart:async';

import 'package:checklist/src/data/database_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsDatabase implements DatabaseRepository {
  // attributes
  final SharedPreferences _prefs;
  // constructor
  const SharedPrefsDatabase(this._prefs);
  // methodes
  @override
  Future<List<String>?> getItems() async {
    return _prefs.getStringList('items');
  }

  @override
  Future<void> removeItem(String item) async {
    _prefs.remove(item);
  }

  @override
  Future<void> storeItem(String item) async {
    _prefs.setString('item', item);
  }
}
