import 'package:flutter/material.dart';
import 'package:todo_task/Screens/tasks_screen.dart';
import 'package:todo_task/models/task.dart';
import 'package:todo_task/models/task_data.dart';
import 'package:todo_task/models/task_data.dart';
import 'package:todo_task/widgets/task_List.dart';
import 'package:provider/provider.dart';
import 'package:todo_task/models/task_data.dart';

class Tasks_List extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<taskData>(
      builder: (context, ttaskData, child) {
        return ListView.builder(
          itemCount: ttaskData.tasks.length,
          itemBuilder: (context, index) {
            return TaskTile(
              isChecked: ttaskData.tasks[index].isDone,
              taskTitle: ttaskData.tasks[index].name,
              checkboxChange: (newvalue) {
                ttaskData.updateTask(ttaskData.tasks[index]);
              },
              listTileDelet: () {
                ttaskData.deleteTask(ttaskData.tasks[index]);
              }, );
          },
        );
      },
    );
  }
}
