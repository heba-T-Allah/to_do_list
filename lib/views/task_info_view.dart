import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_list/view_models/app_view_model.dart';

class TaskInfo extends StatelessWidget {
  const TaskInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppViewModel>(
      builder: (context, appViewModel, child) {
        return Container(
          margin: EdgeInsets.fromLTRB(15, 10, 15, 10),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                      color: appViewModel.clrLv2,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Align(
                          alignment: Alignment.center,
                          child: FittedBox(
                            child: Text("${appViewModel.numTasks}",
                                style: TextStyle(
                                    fontSize: 28,
                                    color: appViewModel.clrLv3,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: FittedBox(
                            child: Text(
                              "Total Tasks",
                              style: TextStyle(
                                  color: appViewModel.clrLv4,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(width:20 ,),
              //Remaining
              Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                      color: appViewModel.clrLv2,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Align(
                          alignment: Alignment.center,
                          child: FittedBox(
                            child: Text("${appViewModel.remainingTasks}",
                                style: TextStyle(
                                    fontSize: 28,
                                    color: appViewModel.clrLv3,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: FittedBox(
                            child: Text(
                              "Remaining",
                              style: TextStyle(
                                  color: appViewModel.clrLv4,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
