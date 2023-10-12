import 'package:flutter/material.dart';
import 'package:to_do_list/models/task-model.dart';
import 'package:to_do_list/models/user_model.dart';

class AppViewModel extends ChangeNotifier {
  List<Task> tasks = <Task>[];
  User user = User("heba");

  int get numTasks => tasks.length;

  int get remainingTasks => tasks.where((task) => !task.complete).length;

  String get getUserName => user.userName;

  void addTask(Task newTask) {
    tasks.add(newTask);
    notifyListeners();
  }

  void deleteAllTasks() {
    tasks.clear();
    notifyListeners();
  }
  void deleteCompletedTasks() {
    tasks=tasks.where((task) => !task.complete).toList();
    notifyListeners();
  }
  void updateUserName(String newUserName) {
    user.userName = newUserName;
    notifyListeners();
  }

  String getTaskTitle(int taskIndex) {
    return tasks[taskIndex].title;
  }

  bool getTaskValue(int taskIndex) {
    return tasks[taskIndex].complete;
  }

  void setTaskValue(int taskIndex, bool taskValue) {
    tasks[taskIndex].complete = taskValue;
    notifyListeners();
  }

  void deleteTask(int taskIndex) {
    tasks.removeAt(taskIndex);
    notifyListeners();
  }

  Color clrLv1 = Colors.purple.shade50;
  Color clrLv2 = Colors.purple.shade200;
  Color clrLv3 = Colors.purple.shade800;
  Color clrLv4 = Colors.purple.shade900;

  void bottomSheetBuilder(Widget bottomSheetView, BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      builder: (context) {
        return bottomSheetView;
      },
    );
  }
}
