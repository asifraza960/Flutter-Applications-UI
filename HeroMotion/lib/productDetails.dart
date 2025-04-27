import 'package:flutter/material.dart';
import 'package:heromotion/productDetailpage.dart';
import 'package:heromotion/product_class.dart';

class ProductListTile extends StatelessWidget {
  const ProductListTile({super.key, required this.product});
  final Product product;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Hero(
        tag: product.title,
        child: CircleAvatar(
          backgroundImage: AssetImage(product.imagespath),
        ),
        flightShuttleBuilder: (
            flightContext,
            animation,
            flightDirection,
            fromHeroContext,
            toHeroContext,
            ) {
          return RotationTransition(
            turns: animation.drive(Tween(begin: 0.0, end: 5.0)),
            child: ScaleTransition(
              scale: animation.drive(Tween(begin: 1.0, end: 3.0)),
              child: (flightDirection == HeroFlightDirection.push
                  ? fromHeroContext.widget
                  : toHeroContext.widget),
            ),
          );
        },
      ),
      title: Text(product.title),
      subtitle: Text(product.price.toString()),
      onTap: () {
        Navigator.of(context).push(
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) {
              return Productdetailpage();
            },
            settings: RouteSettings(arguments: product),
            transitionDuration: const Duration(seconds: 1),
            reverseTransitionDuration: const Duration(seconds: 1),
          ),
        );
      },
    );
  }
}
