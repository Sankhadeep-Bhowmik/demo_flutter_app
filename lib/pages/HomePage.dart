import 'package:flutter/material.dart';
import 'package:flutter_mobile_test/Ecomerce_App/components/bottom_nav.dart';
import 'package:flutter_mobile_test/Ecomerce_App/pages/ShopPage.dart';
import 'package:flutter_mobile_test/Ecomerce_App/pages/CartPage.dart';
class HomePAge extends StatefulWidget {
  const HomePAge({super.key});

  @override
  State<HomePAge> createState() => _HomePAgeState();
}

class _HomePAgeState extends State<HomePAge> {
  int _index=0;
  void navigateBottomBar(int index)
  {
    setState(() {
      _index=index;
    });
  }
  final List<Widget> _pages =[
    //Shop Page
    ShopPage(),
    //Cart Page
    CartPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: bottom_nav(
        onTabChange: (index) =>navigateBottomBar(index)
        ),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Builder(
            builder: (context) {
              return IconButton(
                icon :const Icon(
                  Icons.menu,
                  color: Colors.black,),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              );
            }
          ),
        ),
        drawer: Drawer(
          backgroundColor: Colors.grey.shade700,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Column(
              children: [
                 DrawerHeader(
              child:Image.asset(
              'lib/Ecomerce_App/Images/Logo.jpg',
              color: Colors.white,) 
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Divider(
                  color: Colors.grey,
                ),
              ), 
              const ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                title: Text("H O M E",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),),
              ),
              const ListTile(
                leading: Icon(
                  Icons.info,
                  color: Colors.white,
                ),
                title: Text("A B O U T",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),),
              ),
              ],
            ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 25),
                child: ListTile(
                  leading: Icon(
                    Icons.logout,
                    color: Colors.white,
                  ),
                  title: Text("L O G  O U T",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),),
                ),
              )
          ],)
        ),
        body: _pages[_index],
    );
  }
}