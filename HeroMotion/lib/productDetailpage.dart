import 'package:flutter/material.dart';
import 'package:heromotion/product_class.dart';

class Productdetailpage extends StatelessWidget {
  const Productdetailpage({super.key,});
  @override
  Widget build(BuildContext context) {
    var products = ModalRoute.of(context)!.settings.arguments as Product;
    return Scaffold(
      appBar:AppBar(
        title:Text(products.title),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              flex: 3,
                child: Stack(
                  children: [
                    Container(
                      height: double.infinity,
                      width: double.infinity,
                      color: Colors.brown,
                      child: Hero(
                        tag: products.title,
                        child: CircleAvatar(
                          backgroundImage: AssetImage(products.imagespath),
                        ),
                      ),
                    ),
                    
                  ],
                )
            ),
            Expanded(
              flex: 7,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("this is an amazing")
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
