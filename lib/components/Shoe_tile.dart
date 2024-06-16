// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_mobile_test/Models/Shoe.dart';

class ShoeTile extends StatelessWidget {
  Shoe shoe;
  void Function()? onTap;
  ShoeTile({super.key,required this.shoe, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: 200,
      decoration: BoxDecoration(color: Colors.grey,
      borderRadius: BorderRadius.circular(12)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //shoe picture
          Image.asset(shoe.imagePath),
          //description
          Text(shoe.description,style: const TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),),
          //price + details
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //shoe name
                    Text(shoe.name,style: const TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),),
                    const SizedBox(height: 25),
                    //price
                    Text(shoe.price),
                  ],
                ),
                //plus button
                GestureDetector
                (
                  onTap: onTap ,
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12)),
                    ),
                    child: Icon(Icons.add,
                    color: Colors.white,)),
                )
              ],
            ),
          )
          //button to cart
        ],
      ),
    );
  }
}