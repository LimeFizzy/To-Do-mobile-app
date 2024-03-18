import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];

  // Reference the box
  final _newBox = Hive.box('newBox');

  // Method for creating data for the 1st launch of the app
  void createInitialData() {
    toDoList = [
      ["This is you first task to do!", false],
      ["Swipe left to delete task", false],
    ];
  }

  // Load the data from database
  void loadData() {
    toDoList = _newBox.get("TODOLIST");
  }

  // Update the database
  void updateDataBase() {
    _newBox.put("TODOLIST", toDoList);
  }
}
