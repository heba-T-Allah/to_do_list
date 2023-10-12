import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_list/view_models/app_view_model.dart';
import 'package:to_do_list/views/task_page.dart';

void main() {
  runApp(ChangeNotifierProvider(
    child: MyApp(),
    create: (context) => AppViewModel(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TaskPage(),
    );
  }
}
