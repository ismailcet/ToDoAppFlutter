import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List toDoList = [];

  // reference our box
  final _myBox = Hive.box('mybox');

  // run this method if this is the 1st time ever opening this app
  void createInitialData() {
    toDoList = [
      {"name": "Make Tutorial", "click": false},
      {"name": "Do Exercixe", "click": true},
    ];
  }

  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  void updateDatabse() {
    _myBox.put("TODOLIST", toDoList);
  }
}
