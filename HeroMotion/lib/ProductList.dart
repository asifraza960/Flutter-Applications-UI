import 'package:flutter/material.dart';
import 'package:heromotion/productDetails.dart';
import 'package:heromotion/product_class.dart';

class Productlist extends StatelessWidget {
  const Productlist({super.key,required this.products});


  final List<Product> products;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: products.length,
      itemBuilder: (context,index)=> ProductListTile(product: products[index])
    );
  }
}
