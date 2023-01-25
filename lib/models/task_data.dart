import 'package:flutter/material.dart';
import 'package:todo_task/models/task.dart';
class taskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'go shoping'),
    Task(name: 'go________'),
    Task(name: 'go_________'),
    Task(name: 'go__________')
  ];
  void addTask(String newTaskTitle){
    tasks.add(Task(name: newTaskTitle));
    notifyListeners();
  }
  void updateTask(Task task){
    task.doneChange();
    notifyListeners();
  }
  void deleteTask(Task task){
    tasks.remove(task);
    notifyListeners();
  }
}
