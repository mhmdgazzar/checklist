import 'package:checklist/src/data/database_repository.dart';
import 'package:checklist/src/data/shared_prefs_database.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'src/app.dart';

void main() async {
  final prefs = await SharedPreferences.getInstance();

  DatabaseRepository databaseRepository = SharedPrefsDatabase(prefs);
  runApp(MainApp(databaseRepository: databaseRepository));
}
