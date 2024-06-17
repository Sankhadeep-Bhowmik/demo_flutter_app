import 'package:flutter/material.dart';
import 'package:flutter_mobile_test/Ecomerce_App/pages/intro_page.dart';
import 'package:flutter_mobile_test/Models/cart.dart';
import 'package:provider/provider.dart';
void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context)=>Cart(),
    builder: (context,child )=> const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: intro_page(),
    ),);
  }
}