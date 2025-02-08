import 'package:flutter/material.dart';

class HorizantalMainLayoutwidget extends StatelessWidget {
  const HorizantalMainLayoutwidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size  = MediaQuery.sizeOf(context);
    final Size(:height, :width) = size;
    return
      Scaffold(
        body:  Column(
          children: [
            Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: height *1,
                  width: width * 0.50,
                  color: Colors.lightBlue,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("it's what's happening",style: TextStyle(
                          color: Colors.black38,
                          fontSize: MediaQuery.of(context).size.width *0.04
                      ),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "twitter",
                            style: TextStyle(
                                color: Colors.white,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                                fontSize: MediaQuery.of(context).size.width * 0.07),
                          ),
                          Text(
                            " X",
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                                fontSize: MediaQuery.of(context).size.width * 0.07),
                          )
                        ],
                      ),
                    ],
                  ),

                ),
                Container(
                  alignment: Alignment.center,
                  height: height *1,
                  width: width * 0.50,
                  color: Colors.white,
                  child: Column(
                    mainAxisSize: MainAxisSize.min, // Minimize space used vertically
                    children: [
                      Container(
                        height: height * 0.2,
                        width: width*0.40,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(image: AssetImage("Assets/images/twiter.jpg"))
                        ),
                      ),
                      const SizedBox(height: 30,),
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: height *0.06,
                        width: width * 0.40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: Colors.black.withOpacity(0.3)
                          ),
                        ),
                        child:  Align(
                            alignment: Alignment.bottomLeft,
                            child:  Text("@gmail.com",style: TextStyle(color: Colors.black38,
                                fontSize: MediaQuery.of(context).size.width * 0.02
                            ),)),// First inner container
                      ),
                      const SizedBox(height: 30,),
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: height *0.06,
                        width: width * 0.40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: Colors.black.withOpacity(0.3)
                          ),
                        ),
                        child:  Align(
                            alignment: Alignment.bottomLeft,
                            child:  Text("password",style: TextStyle(color: Colors.black38,
                                fontSize: MediaQuery.of(context).size.width * 0.02
                            ),)),// First inner container
                      ),
                      const SizedBox(height: 30,),
                      Container(
                        height: height* 0.06,
                        width: width * 0.40,
                        decoration: BoxDecoration(
                          color: Colors.lightBlue,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text("Sing up",style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: MediaQuery.of(context).size.width * 0.03
                          ),),
                        ),
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text("Don't have an account?",style: TextStyle(

                              color: Colors.black,
                              fontSize: MediaQuery.of(context).size.width *0.02
                          ),),
                          Text(" Register",style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Colors.lightBlue,
                              fontSize: MediaQuery.of(context).size.width *0.02
                          ),),
                        ],
                      )
                      // Space between the containers
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      );
  }
}
