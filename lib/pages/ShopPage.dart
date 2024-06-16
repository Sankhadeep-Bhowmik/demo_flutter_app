import 'package:flutter/material.dart';
import 'package:flutter_mobile_test/Ecomerce_App/components/Shoe_tile.dart';
import 'package:flutter_mobile_test/Models/Shoe.dart';
import 'package:flutter_mobile_test/Models/cart.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShoppageState();
}

class _ShoppageState extends State<ShopPage> {
  //add shoe to cart
  void addShoeTocart(Shoe shoe)
  {
    Provider.of<Cart>(context,listen: false).additem(shoe);
    showDialog(
      context: context, builder: (context)=>AlertDialog(
      title: Text("Successfully Added"),
      content: Text("Check your cart"),
    ));
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart> (builder: (context, value, child )=>Column(
      children: [
        //search
        Container(
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
              color: Colors.grey[100], borderRadius: BorderRadius.circular(12)),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Search",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              Icon(Icons.search),
            ],
          ),
        ),
        //message
        const Padding(
          padding: EdgeInsets.all(25),
          child: Text(
            "D O  O R  D I E",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
        //picks
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                " H O T  P I C K S 🔥🔥",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                " See All ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Expanded(
            child :ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  //get a shoe from list
                  Shoe shoe = value.getShoeList()[index];
                  return ShoeTile(
                    shoe: shoe,
                    onTap:()=> addShoeTocart(shoe),
                  );
                })),
                const Padding(
                  padding: EdgeInsets.only(top: 25,left: 25),
                  child: Divider(
                    color: Colors.white,
                  ),
                )
      ],)
    );
  }}