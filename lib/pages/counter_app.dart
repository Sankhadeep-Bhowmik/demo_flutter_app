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
      debugShowCheckedModeBanner: false,
      home: counter_app(),
    );
  }
}
class counter_app extends StatefulWidget {
  const counter_app({super.key});

  @override
  State<counter_app> createState() => _counter_appState();
}

class _counter_appState extends State<counter_app> {
  int counter =0;
  void increment()
  {
    setState(() {
      counter ++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("COUNTER PAGE"),
        backgroundColor: Colors.blue,     
      ),
      body : Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "YOU HAVE PUSHED THE BUTTON THIS MANY TIMES",
            style: TextStyle(
              fontSize: 16,
            ),),
          Text(
            counter.toString(),
            style: TextStyle(
              fontSize: 40,
            ),
          ),
          //ElevatedButton(onPressed: increment, child: Text("PUSH TO INCREMENT")),
        ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: increment,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), 
    );
  }
}