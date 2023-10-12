import 'package:flutter/material.dart';
import 'package:to_do_list/views/add_task_view.dart';
import 'package:to_do_list/views/header_view.dart';
import 'package:to_do_list/views/task_info_view.dart';
import 'package:to_do_list/views/task_list_view.dart';

class TaskPage extends StatelessWidget {
  const TaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Column(children: [
          //header view
          Expanded(
            flex: 1,
            child: HeaderView()
          ),
          //task info view
          Expanded(
            flex: 1,
            child: TaskInfo(),
          ),
          //task list view
          Expanded(
            flex: 7,
            child: TaskListView(),
          ),
        ]),
      ),
      floatingActionButton: AddTaskView(),
    );
  }
}
