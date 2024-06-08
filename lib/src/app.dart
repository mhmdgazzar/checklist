import 'package:checklist/src/data/database_repository.dart';
import 'package:checklist/src/features/main_screen/presentation/main_screen.dart';
import 'package:flutter/material.dart';

class MainApp extends StatelessWidget {
  final DatabaseRepository databaseRepository;

  const MainApp({super.key, required this.databaseRepository});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(
        databaseRepository: databaseRepository,
      ),
    );
  }
}
