import 'database_repository.dart';

List<String>? itemsList = ["test item 1", "test item 2"];

class MockDatabase implements DatabaseRepository {
  @override
  Future<List<String>?> getItems() async {
    await Future.delayed(const Duration(seconds: 2));
    return itemsList;
  }

  @override
  Future<void> removeItem(String? item) async {
    await Future.delayed(const Duration(seconds: 2));
    itemsList!.remove(item);
  }

  @override
  Future<void> storeItem(String item) async {
    await Future.delayed(const Duration(seconds: 2));
    itemsList?.add(item);
  }
}
