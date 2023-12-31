import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_list/view_models/app_view_model.dart';
import 'package:to_do_list/views/bottom_sheets/delete_bottom_sheet.dart';
import 'package:to_do_list/views/bottom_sheets/settings_bottom_sheet.dart';

class HeaderView extends StatelessWidget {
  const HeaderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppViewModel>(
      builder: (context, viewModel, child) {
        return Row(
          children: [
            Expanded(
                flex: 3,
                child: Container(
                  margin: EdgeInsets.only(left: 15),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: FittedBox(
                            fit: BoxFit.fitHeight,
                            child: Text(
                              "Welcome back,",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                  color: viewModel.clrLv4),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: FittedBox(
                            fit: BoxFit.fitHeight,
                            child: Text(
                              "${viewModel.getUserName}",
                              style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                  color: viewModel.clrLv4),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
            Expanded(
                flex: 1,
                child: InkWell(
                    onTap: () {
                      viewModel.bottomSheetBuilder(
                          DeleteBottomSheet(), context);
                    },
                    child: Icon(
                      Icons.delete,
                      color: viewModel.clrLv3,
                      size: 40,
                    ))),
            Expanded(
                flex: 1,
                child: InkWell(
                  onTap: () {
                    viewModel.bottomSheetBuilder(
                        SettingsBottomSheet(), context);
                  },
                  child: Icon(
                    Icons.settings,
                    color: viewModel.clrLv3,
                    size: 40,
                  ),
                )),
          ],
        );
      },
    );
  }
}
