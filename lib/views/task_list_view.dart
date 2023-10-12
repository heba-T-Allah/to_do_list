import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_list/view_models/app_view_model.dart';

class TaskListView extends StatelessWidget {
  const TaskListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppViewModel>(
      builder: (context, appViewModel, child) {
        return Container(
          decoration: BoxDecoration(
              color: appViewModel.clrLv2,
              borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
          child: ListView.separated(
            padding: EdgeInsets.all(15),
            separatorBuilder: (context, index) {
              return SizedBox(
                height: 15,
              );
            },
            itemCount: appViewModel.numTasks,
            itemBuilder: (context, index) {
              return Dismissible(
                key: UniqueKey(),
                // direction: DismissDirection.endToStart,
                onDismissed: (direction) {
                  appViewModel.deleteTask(index);
                },
                background: Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      color: Colors.red.shade300,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(child: Icon(Icons.delete,color: Colors.red.shade700,),)),
                child: Container(
                  decoration: BoxDecoration(
                      color: appViewModel.clrLv1,
                      borderRadius: BorderRadius.circular(20)),
                  child: ListTile(
                    leading: Checkbox(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      side: BorderSide(width: 2, color: appViewModel.clrLv3),
                      activeColor: appViewModel.clrLv3,
                      checkColor: appViewModel.clrLv1,
                      value: appViewModel.getTaskValue(index),
                      onChanged: (value) {
                        appViewModel.setTaskValue(index, value!);
                      },
                    ),
                    title: Text(
                      "${appViewModel.getTaskTitle(index)}",
                      style: TextStyle(
                          color: appViewModel.clrLv4,
                          fontSize: 17,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
