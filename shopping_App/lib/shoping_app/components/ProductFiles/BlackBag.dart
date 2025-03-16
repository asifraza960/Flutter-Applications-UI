import 'package:flutter/material.dart';

class Blackbag extends StatefulWidget {
  const Blackbag({super.key});

  @override
  State<Blackbag> createState() => _BlackbagState();
}

class _BlackbagState extends State<Blackbag> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Stack(
        children: [
          Flexible(
            flex: 100,
            child: Column(
              children: [
                Expanded(
                  flex: 50,
                  child: Container(
                   width: double.infinity,
                    color: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Architecture Hand Bag',style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                          ),),
                          Text('Office Bag',style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold
                          ),),
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
                        topRight: Radius.circular(20)
                      )
                    ),
                  ),
                ),
              ],
            ),
          ),
             Align(
              alignment: Alignment.centerRight,
              child: Image.asset("asset/images/black1.png",
                width: 200,
                height: 200,
              ),
            ),

        ],
      ),
    );
  }
}
