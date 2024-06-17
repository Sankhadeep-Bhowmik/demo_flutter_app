import 'package:flutter/material.dart';
import 'package:flutter_mobile_test/data/dataBase.dart';
import 'package:flutter_mobile_test/main.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive_flutter/adapters.dart';
import '../TODOAPP/ToDoTile.dart';
import '../TODOAPP/DialogBox.dart';

class homepage extends StatefulWidget { 
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  //reference of hive
  final _mybox = Hive.box("My box");
  DataBase db = DataBase();
  void init()
  {
    //if this is the first time opening the app then create default data
    if(_mybox.get("TODOLIST") == null)
    {
      db.createInitialData();
    }
    else{
      //there already exists data
      db.loadData();
    }
  }
  final controller = TextEditingController();
  void CheckBoxChanged(bool? value, int index) {
    setState(() {
      db.toDoList[index][1] = !db.toDoList[index][1];
    });
    db.updateDataBase();
  }

  //save a new task
  void saveNewTask() {
    setState(() {
      db.toDoList.add([controller.text, false]);
      controller.clear();
    });
    Navigator.of(context).pop();
  }

  void createNewTask() {
    showDialog(
      context: context,
      builder: (context) {
        return dialogbox(
          controller: controller,
          onSave: saveNewTask,
          onCancel: () => Navigator.of(context).pop(),
        );
      },
    );
  }

  void deleteFunction(int index) {
    setState(() {
      db.toDoList.removeAt(index);
    });
    db.updateDataBase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.yellow[200],
        appBar: AppBar(
          elevation: 0,
          title: const Center(
            child: Text(
              "TO DO APP",
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: createNewTask, child: Icon(Icons.add)),
        body: ListView.builder(
          itemCount: db.toDoList.length,
          itemBuilder: (context, index) {
            return ToDoTile(
              taskName: db.toDoList[index][0],
              taskCompleted: db.toDoList[index][1],
              onChanged: (value) => CheckBoxChanged(value, index),
              deleteFunction: (context) => deleteFunction(index),
            );
          },
        ));
  }
}