abstract class DatabaseRepository {
  // add method
  Future<void> storeItem(String item);

  // remove method
  Future<void> removeItem(String item);

  // get method
  Future<List<String>?> getItems();
}
