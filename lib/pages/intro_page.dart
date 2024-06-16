import 'package:flutter/material.dart';
import 'package:flutter_mobile_test/Ecomerce_App/pages/HomePage.dart';

class intro_page extends StatelessWidget {
  const intro_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Padding(
            //padding at sides
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              //logo
              Padding(
                padding: const EdgeInsets.all(22.0),
                child: Image.asset(
                  'lib/Ecomerce_App/Images/Logo.jpg',
                  height: 150,
                ),
              ),
              //Sub Title
              const SizedBox(height: 25),
              const Text(
                "Impossible Is Nothing",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              //Shop now
              const SizedBox(height: 30),
              const Text(
                textAlign: TextAlign.center,
                "WE SERVE HIGH QUALITY SHOES AT AN AFFORDABLE PRICE",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 48),
              GestureDetector(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePAge())),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        "Shop Now",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ));
  }
}
