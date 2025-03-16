import 'package:flutter/material.dart';
import 'package:shopping_app/shoping_app/components/products.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

List ColorList = [
  Colors.black,
  Colors.indigo,
  Colors.indigo,
  Colors.tealAccent,
  Colors.lime,
  Colors.teal,
  Colors.purpleAccent,
  Colors.red
];

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4, // Number of tabs
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.blue,
              title: const Text("Woman"),
              bottom: const TabBar(
                indicatorColor: Colors.white, // Tab indicator color
                labelColor: Colors.black, // Active tab text color
                unselectedLabelColor: Colors.white, // Inactive tab text color
                tabs: [
                  Tab(text: 'Hand Bag'),
                  Tab(text: 'Dresses'),
                  Tab(text: 'Jewelry'),
                  Tab(text: 'Shoes'),
                ],
              ),
            ),
            body: GridView.builder(
                itemCount: itemList.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, mainAxisSpacing: 8),
                itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                            color: ColorList[index],
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage(itemList[index].img),
                              fit: BoxFit.cover,
                            ),
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(-1, 1),
                                  color: Colors.grey,
                                  blurRadius: 2,
                                  spreadRadius: 2)
                            ]),
                        child: Stack(children: [
                          // Positioned Button at Bottom-Right
                          Positioned(
                            bottom: 5,
                            right: 0,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: const CircleBorder(),
                                padding: const EdgeInsets.all(
                                    8), // Adjust button size
                                backgroundColor:
                                    ColorList[index], // Button color
                              ),
                              onPressed: () {
                                // Button Action
                              },
                              child: const Icon(Icons.add, color: Colors.white),
                            ),
                          ),
                        ]))))));
  }
}
