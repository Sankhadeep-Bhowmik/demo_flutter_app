import 'package:flutter/material.dart';
import 'package:flutter_mobile_test/Models/Shoe.dart';

class Cart extends ChangeNotifier{
  List<Shoe> shoeShop=[
    Shoe(name: "Zoom freak", 
    price: '20000',
    imagePath: 'lib/Ecomerce_App/Images/Shoes2.jpg', 
    description: "ZOOM FOR LIFE"),

    Shoe(name: "Air Jordans", 
    price: '25000',
    imagePath: 'lib/Ecomerce_App/Images/Shoes1.jpg', 
    description: "DO SOMETHING"),

    Shoe(name: "KD Treak", 
    price: '10000',
    imagePath: 'lib/Ecomerce_App/Images/Shoes3.jpg', 
    description: "Treaking FL"),

    Shoe(name: "Kyrie 6", 
    price: '22000',
    imagePath: 'lib/Ecomerce_App/Images/Shoes4.jpg', 
    description: "Sweet 6"),
  ];
  //list of items in cart
  List<Shoe> userCart=[];
  //get list of items for sale
  List<Shoe> getShoeList(){
    return shoeShop;
  }
  //get cart
  List<Shoe> getUserCart(){
    return userCart;
  }
  //add items
  void additem(Shoe shoe)
  {
    userCart.add(shoe);
    notifyListeners();
  }
  //removing items
  void removeItemFromCart(Shoe shoe)
  {
    userCart.remove(shoe);
    notifyListeners();
  }
}