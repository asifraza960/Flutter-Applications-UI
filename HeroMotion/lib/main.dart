import 'package:flutter/material.dart';
import 'package:heromotion/ProductList.dart';

import 'package:heromotion/product_class.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count = 0;

  void _increment() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product List',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("HeroNavigation"),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: Productlist(products: products),
        floatingActionButton: FloatingActionButton(
          onPressed: _increment,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

List<Product> products = [
  Product(title: 'Burger', price: 550.0, imagespath: "asset/images/burger.jpg"),
  Product(title: 'Pizza', price: 2300.0, imagespath: "asset/images/pizza.jpg"),
  Product(title: 'Zinger', price: 500.0, imagespath: "asset/images/wings.jpg"),
  Product(title: 'Chips', price: 300.0, imagespath: "asset/images/chip.jpg"),
  Product(title: 'Burger', price: 550.0, imagespath: "asset/images/burger.jpg"),
  Product(title: 'Pizza', price: 2300.0, imagespath: "asset/images/pizza.jpg"),
  Product(title: 'Zinger', price: 500.0, imagespath: "asset/images/wings.jpg"),
  Product(title: 'Chips', price: 300.0, imagespath: "asset/images/chip.jpg"),
];
