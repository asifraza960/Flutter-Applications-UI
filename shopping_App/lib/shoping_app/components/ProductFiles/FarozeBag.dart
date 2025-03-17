import 'package:flutter/material.dart';

class FarozeBag extends StatefulWidget {
  const FarozeBag({super.key});

  @override
  State<FarozeBag> createState() => _FarozeBagState();
}

class _FarozeBagState extends State<FarozeBag> with  SingleTickerProviderStateMixin{
  late AnimationController _animationController;
  late Animation<double> _animation;
  bool isChecked = false;

  @override
  void initState() {
    _animationController = AnimationController(vsync: this,
        duration: Duration(seconds: 1)
    );
    _animation = Tween(begin: 0.0,end: 1.0).animate(CurvedAnimation(parent: _animationController, curve: Interval(0.0, 1.0,curve: Curves.bounceInOut)));
    _animationController.forward();

  }
  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double Screenheight = MediaQuery.of(context).size.height;
    double Screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        appBar: AppBar(
          backgroundColor: Colors.tealAccent.withOpacity(0.5),
        ),
        body: AnimatedBuilder(
          animation: _animationController,
          builder: (context,index) => Opacity(
            opacity:_animation.value,
            child: Stack(
              children: [
                Flexible(
                  flex: 100,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 50,
                        child: Container(
                          width: double.infinity,
                          color: Colors.tealAccent.withOpacity(0.5),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Architecture Hand Bag',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Office Bag',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 50,
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20))),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("Color"),
                                          Row(
                                            children: [
                                              CircleAvatar(
                                                backgroundColor: Colors.black,
                                                radius: 7,
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              CircleAvatar(
                                                backgroundColor: Colors.red,
                                                radius: 7,
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              CircleAvatar(
                                                backgroundColor: Colors.green,
                                                radius: 7,
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                    "Designed for the modern professional, this women's office handbag blends style, functionality, and sophistication. Crafted from premium materials, it offers a sleek, structured silhouette that complements any business attire."),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Row(
                                    children: [
                                      Container(
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                            color: Colors.grey,
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                          child: Icon(
                                            Icons.add,
                                            size: 20,
                                          )),
                                      SizedBox(width: 5),
                                      Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                          color: Colors.grey,
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: Center(child: Text("01")),
                                      ),
                                      SizedBox(width: 5),
                                      Container(
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                            color: Colors.grey,
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                          child: Icon(
                                            Icons.remove,
                                            size: 20,
                                          )),
                                    ],
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 200,
                  right: 10,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Image.asset(
                      "asset/images/faroze1.png",
                      width: 200,
                      height: 200,
                    ),
                  ),
                ),
                Positioned(
                  left: 20,
                  top: 280,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'RS',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        '\$2340',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                    bottom: 10,
                    left: 10,
                    right: 10,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Positioned(
                              bottom: 10,
                              child: Row(children: [
                                Container(
                                    height: Screenheight * 0.06,
                                    width: Screenwidth * 0.20,
                                    decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.circular(10)),
                                    child: Icon(Icons.shopping_cart_outlined,)
                                ),
                              ])),
                          SizedBox(width: Screenwidth * 0.05,),
                          Container(
                              height: Screenheight * 0.06,
                              width: Screenwidth * 0.65,
                              decoration: BoxDecoration(
                                  color: Colors.tealAccent.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                child: Text(
                                  "Buy Now",
                                  style: TextStyle(color: Colors.white),
                                ),
                              )),


                        ])),

              ],
            ),
          ),
        )
    );
  }
}
