import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: FirstPage(),
      routes: {
        '/homepage': (context) => HomePage(),
      },
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            ListTile(
              title: Text('Home Page'),
              onTap: () {
                Navigator.pushNamed(context, '/homepage');
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Go to Home Page'),
          onPressed: () {
            Navigator.pushNamed(context, '/homepage');
          },
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Text('Welcome to Home Page'),
     ),
     );
  }
}
