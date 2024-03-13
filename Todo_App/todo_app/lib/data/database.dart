import 'package:hive_flutter/hive_flutter.dart';

class TodoDatabase {
  List todoList = [];

  final _myBox = Hive.box('mybox');

  void createInitialData() {
    todoList = [
      ['Learn Dart', false],
      ['Learn Flutter', false],
    ];
  }

  void loadData() {
    todoList = _myBox.get('TODOLIST');
  }

  void updateDataBase() {
    _myBox.put('TODOLIST', todoList);
  }
}
