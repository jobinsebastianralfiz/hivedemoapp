import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:hivedemo/models/todo_model.dart';
import 'package:hivedemo/screens/todo_home_page.dart';
import 'package:hivedemo/service/todo_service.dart';

void main() async{
  await Hive.initFlutter();
  Hive.registerAdapter(TodoAdapter());
  await TodoService().openBox();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const TodoScreen());
  }
}
