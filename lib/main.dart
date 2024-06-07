import 'package:checklist/src/data/database_repository.dart';
import 'package:checklist/src/data/mock_database.dart';
import 'package:flutter/material.dart';

import 'src/app.dart';

void main() {
  DatabaseRepository databaseRepository = MockDatabase();
  runApp(const MainApp());
}
