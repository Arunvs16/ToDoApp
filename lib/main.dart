import 'package:flutter/material.dart';
import 'package:todo_app_/pages/home_page.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async{

  //init hive
  await Hive.initFlutter();

  // open a box
  var box = await Hive.openBox('mybox');
  
  runApp(
    const MainApp(),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
