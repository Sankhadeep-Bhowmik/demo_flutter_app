import 'package:flutter/material.dart';
import 'package:flutter_mobile_test/pages/first_page.dart';
import 'package:flutter_mobile_test/pages/homepage.dart';
import 'package:flutter_mobile_test/pages/secondpage.dart';
import 'package:flutter_mobile_test/pages/settings.dart';
void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
      routes: {
        '/firstpage' :(context) => FirstPage(),
        '/homepage' : (context)=> Homepage(),
        '/secondpage' : (context) => Secondpage(),
        //'/settings' : (context)=> Settings(),
      },
    );
  }
}
