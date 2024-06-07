import 'package:flutter/material.dart';
class Secondpage extends StatelessWidget {
  const Secondpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("2nd Page"),
      ),
      body: const Center(
        child:Text(
          "Welcome to 2nd page",
          style: TextStyle(
            color: Colors.green,
            fontSize: 30,
          ),
        )
      ),
    );
  }
}