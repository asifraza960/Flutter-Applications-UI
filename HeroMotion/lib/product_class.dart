class Products {
  String title;
  double price;
  String imagespath;

  Products({required this.title, required this.price, required this.imagespath});

}
List<Products> productlis =[
  Products(title: 'Burger', price: 33.0, imagespath: "asset/images/burger.jpg"
  ),
  Products(title: 'Pizza', price: 2300.0, imagespath: "asset/images/burger.jpg"
  ),
  Products(title: 'Zinger', price: 500.0, imagespath: "asset/images/burger.jpg"
  )
];