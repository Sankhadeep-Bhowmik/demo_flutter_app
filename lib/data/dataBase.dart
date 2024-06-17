import 'package:hive_flutter/hive_flutter.dart';

class DataBase{
  List toDoList=[];
  //reference of hive
  final _mybox = Hive.box("My box");

  //run iff this is 1st time opening the app
  void createInitialData()
  {
    toDoList=[
      ["Sleep",false],
      ["Eat",false],
    ];
  }
  //load data from database
  void loadData()
  {
    toDoList = _mybox.get("TODOLIST");
  }
  //update database
  void updateDataBase()
  {
    _mybox.put("TODOLIST", toDoList);
  }
}