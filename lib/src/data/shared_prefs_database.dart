import 'package:checklist/src/data/database_repository.dart';
import 'package:checklist/src/data/mock_database.dart';

class SharedPrefsDatabase implements DatabaseRepository {
  // attributes
  final SharedPrefsDatabase _prefs;

  // constructor
  const SharedPrefsDatabase(this._prefs);

  // methodes
  @override
  Future<List<String>> getItems() async {
    return itemsList;
  }

  @override
  Future<void> removeItem(String item) async {}

  @override
  Future<void> storeItem(String item) async {
    itemsList.add(item);
  }
}
