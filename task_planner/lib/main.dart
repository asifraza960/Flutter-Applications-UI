import 'package:flutter/material.dart';
import 'package:task_planner/task_planner/Home.dart';
import 'package:task_planner/task_planner/New_task.dart';
import 'package:task_planner/task_planner/Today.dart';

import 'User_access/Access.dart';
import 'User_access/Login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Access(),
    );
  }
}

