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
        child: CircleAvatar(backgroundImage: AssetImage(product.imagespath)),
        placeholderBuilder: (context, heroSize, child) => CircleAvatar(
          backgroundColor: Colors.grey,
        ),
        flightShuttleBuilder: (flightContext, animation, flightDirection, fromHeroContext, toHeroContext) => RotationTransition(turns: animation.drive(Tween(begin: 0.0,end: 3.0),
        ),
          child: ScaleTransition(scale: animation.drive(Tween(begin: 0.0,end: 5.0)),
            child: flightContext.widget,
          ),

        ),
      ),
      title: Text(product.title),
      subtitle: Text(product.price.toString()),
      onTap: () {
        Navigator.of(context).push(
          PageRouteBuilder(
            pageBuilder:
                (context, animation, secondaryAnimation) => Productdetailpage(),
            settings: RouteSettings(arguments: product),
            transitionDuration: Duration(seconds: 1),
            reverseTransitionDuration: Duration(seconds: 1)
          ),
        );
      },
    );
  }
}
