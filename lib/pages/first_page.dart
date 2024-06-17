import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_mobile_test/pages/settings.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      home: FirstPage(),
      routes: {
        '/firstpage':(context)=>FirstPage(),
        '/homepage': (context) => HomePage(),
        '/settings' : (context)=> Settings(),
        '/profile' : (context) => Profile(),
      },
    );
  }
}

class FirstPage extends StatefulWidget {
  @override
  State<FirstPage> createState() => _FirstPageState();
}
class _FirstPageState extends State<FirstPage> {
  int selected =0;
  void navigateBottom (int index)
  {
    setState(() {
      selected = index;
    });
  }
  final List _page = [
  HomePage(),
  Profile(),
  Settings(),
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: Text('First Page'),
      ),*/
      body: _page[selected],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selected,
        onTap: navigateBottom,
        items: [
        const BottomNavigationBarItem(icon: 
        Icon(Icons.home),
        label:"H O M E"
        ),
        BottomNavigationBarItem(icon: Icon(Icons.person),
        label:"P R O F I L E",
        ),
        BottomNavigationBarItem(icon: Icon(Icons.settings),
        label:"S E T T I N G S",
        ),
      ],
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
        //child: ElevatedButton(
          child: Text("Home Page",
          style: TextStyle(
            fontSize: 20,
          ),) ,
          /*onPressed: () {
            Navigator.pushNamed(context, '/settings');
          },*/
          ),
     );
  }
}
class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Page'),
      ),
      body: Center(
        child: Container(
          child: Text("Profile Page",
          style: TextStyle(
            fontSize: 20,
          ),
          ),

        ),
      ),
      /*body: Center(
        child: ElevatedButton(
          child: Text("Go to settings") ,
          onPressed: () {
            Navigator.pushNamed(context, '/settings');
          },
          ),
     ),*/
     );
  }
}
class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SETTINGS"),
      ),
      body: Center(
          child: ElevatedButton(
            child: Text("Go to first page"),
            onPressed: () {
              Navigator.pushNamed(context, '/firstpage');
            },
            ),
      )

    );
  }
}