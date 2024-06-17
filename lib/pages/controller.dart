import 'package:flutter/material.dart';
import 'package:flutter_mobile_test/main.dart';
void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ToDoPage(),
    );
  }
}
class ToDoPage extends StatefulWidget {
  const ToDoPage({super.key});

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {
  TextEditingController myController = TextEditingController();
  String greeting =" ";
  void greet()
  {
    setState(() {
      greeting ="Hello " + myController.text;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(25.0),
          child :Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children : [
              Text(greeting),
              TextField(
              controller: myController,
              decoration: InputDecoration(
                border : OutlineInputBorder(),
                hintText: 'TYPE YOUR NAME',
            ),
            ),
            ElevatedButton(onPressed: greet, child: Text(
              "TAP",
              style: TextStyle(fontSize: 18),
              )),
          ],
        )
      ),
      ),
    );
  }
}