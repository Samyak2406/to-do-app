import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'pages/todo_page.dart';
import 'package:provider/provider.dart';
import 'task_notifier.dart';

void  main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>tasksData(),
      child: MaterialApp(
        home: todo_page(),
      ),
    );
  }
}