import 'package:flutter/material.dart';
import 'package:flutter_projects/data/task_manager.dart';
import 'package:flutter_projects/screens/form_screen.dart';
import 'package:flutter_projects/screens/initial_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TaskInherited(child: const InitialScreen()),
    );
  }
}





