import 'package:flutter/material.dart';
import 'package:todo_task/models/task_data.dart';

import 'Screens/tasks_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => taskData(),
      child:MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
