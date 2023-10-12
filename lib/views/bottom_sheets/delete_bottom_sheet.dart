import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_list/models/task-model.dart';
import 'package:to_do_list/view_models/app_view_model.dart';

class DeleteBottomSheet extends StatelessWidget {
  DeleteBottomSheet({super.key});

  final TextEditingController taskEntryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Consumer<AppViewModel>(
      builder: (context, appViewModel, child) {
        return Container(
          height: 125,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    appViewModel.deleteAllTasks();
                    Navigator.of(context).pop();
                  },
                  style: ElevatedButton.styleFrom(
                      foregroundColor: appViewModel.clrLv3,
                      backgroundColor: appViewModel.clrLv1,
                      textStyle:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  child: Text("Delete All")),
              SizedBox(width: 15,),
              ElevatedButton(
                  onPressed: () {
                    appViewModel.deleteCompletedTasks();
                    Navigator.of(context).pop();
                  },
                  style: ElevatedButton.styleFrom(
                      foregroundColor: appViewModel.clrLv3,
                      backgroundColor: appViewModel.clrLv1,
                      textStyle:
                      TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  child: Text("Delete Completed")),
            ],
          ),
        );
      },
    );
  }
}
