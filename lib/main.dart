import 'package:checklist/src/data/database_repository.dart';
import 'package:checklist/src/data/shared_prefs_database.dart';
import 'package:flutter/material.dart';

import 'src/app.dart';

void main() {
  DatabaseRepository databaseRepository = SharedPrefsDatabase();
  runApp(MainApp(databaseRepository: databaseRepository));
}
