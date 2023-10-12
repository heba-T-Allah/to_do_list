import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:to_do_list/view_models/app_view_model.dart';
import 'package:to_do_list/views/bottom_sheets/add_task_bottom_sheet_view.dart';

class AddTaskView extends StatelessWidget {
  const AddTaskView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppViewModel>(
      builder: (context, appViewModel, child) {
        return SizedBox(
          height: 60,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: appViewModel.clrLv3,
                  foregroundColor: appViewModel.clrLv1,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              onPressed: () {
                HapticFeedback.heavyImpact();
                appViewModel.bottomSheetBuilder(AddTaskBottomSheet(), context);
              },
              child: Icon(
                Icons.add,
                size: 30,
              )),
        );
      },
    );
  }
}
