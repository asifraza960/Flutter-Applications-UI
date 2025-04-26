import 'package:flutter/material.dart';
import 'package:heromotion/productDetailpage.dart';
import 'package:heromotion/product_class.dart';

class ProductList extends StatelessWidget {
  const ProductList({super.key, required this.products});
  final Products products;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Hero(
        tag: products.title,
        child: CircleAvatar(backgroundImage: AssetImage(products.imagespath)),
      ),
      title: Text(products.title),
      subtitle: Text(products.price.toString()),
      onTap: () {
        Navigator.of(context).push(
          PageRouteBuilder(
            pageBuilder:
                (context, animation, secondaryAnimation) =>
                    Productdetailpage(),
            settings: RouteSettings(arguments:products),
            transitionDuration: Duration(seconds: 1),
            reverseTransitionDuration: Duration(seconds: 1)
          ),
        );
      },
    );
  }
}
