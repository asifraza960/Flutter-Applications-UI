import 'package:flutter/material.dart';
import 'package:heromotion/product_class.dart';

class Productdetailpage extends StatelessWidget {
  const Productdetailpage({super.key});
  @override
  Widget build(BuildContext context) {
    var products = ModalRoute.of(context)!.settings.arguments as Product;
    return Scaffold(
      appBar: AppBar(title: Text(products.title)),
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
                    color: Colors.blue,
                    child: Hero(
                      tag: products.title,
                      placeholderBuilder:
                          (context, heroSize, child) =>
                              Opacity(opacity: 0.5, child: child),
                      child: CircleAvatar(
                        backgroundImage: AssetImage(products.imagespath),
                        radius: 90,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 7,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text(products.title)],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
