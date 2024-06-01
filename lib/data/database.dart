import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  // list of todo tasks
  List toDoList = [];

  //reference of the hive

  final _myBox = Hive.box('mybox');

  //run this method if this is the 1st time ever opening this app
  void createInitalData() {
    toDoList = [
      ["Make Tutorials", false],
      ["Do Exercise", false],
    ];
  }

  // load the data from database`1
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  // update the database

  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
