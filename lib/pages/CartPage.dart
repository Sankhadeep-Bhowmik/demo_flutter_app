import 'package:flutter/material.dart';
import 'package:flutter_mobile_test/Ecomerce_App/components/cart_items.dart';
import 'package:flutter_mobile_test/Models/Shoe.dart';
import 'package:flutter_mobile_test/Models/cart.dart';
import 'package:provider/provider.dart';
class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartpageState();
}

class _CartpageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context,value, child)=>Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //heading
          Text("My Cart",style: TextStyle(fontWeight: FontWeight.bold,
          fontSize: 25)),
          SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: value.getUserCart().length,
              itemBuilder: (context,index){
            //get individual els
            Shoe individualShoe= value.getUserCart()[index];
            //return the cart item
            return CartItem(
              shoe: individualShoe,
            );
          }))
        ],
      ),
    ));
  }
}