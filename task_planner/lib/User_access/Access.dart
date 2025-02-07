import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Login.dart';
import 'Register.dart';

class Access extends StatefulWidget {
  const Access({super.key});

  @override
  State<Access> createState() => _AccessState();
}

class _AccessState extends State<Access> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    var Size(:height, : width) = size;
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Flexible(
          flex: 100,
            child: Column(
              children: [
                Expanded(
                  flex: 30,
                  child: Center(
                    child: Container(
                      width: width *1,
                      color: Colors.orange,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 50.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("Task planner",style: GoogleFonts.cambo(
                              fontSize: MediaQuery.sizeOf(context).height * 0.02,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 40.0),
                              child: Text("plane task",style: GoogleFonts.cambo(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Expanded(
                    flex: 30,
                    child: Container(
                      width: width *1,
                      color: Colors.orange,
                      child: Column(
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.push(context,  MaterialPageRoute(builder: (context) => Login())
                              );
                            },
                            child: Container(
                              height: height * 0.05,
                              width: width*1,
                              decoration: BoxDecoration(
                                  color: Colors.white
                              ),
                              child: Center(
                                child: Text("Login",style: TextStyle(
                                    color: Colors.orangeAccent,
                                    fontWeight: FontWeight.bold,
                                    fontSize: MediaQuery.sizeOf(context).height * 0.03
                                ),),

                              ),
                            ),
                          ),
                          SizedBox(height: MediaQuery.sizeOf(context).height * 0.01,),
                          InkWell(
                            onTap: (){
                              Navigator.push(context,  MaterialPageRoute(builder: (context) => Register())
                              );
                            },
                            child: Container(
                              height: height * 0.05,
                              width: width*1,
                              decoration: BoxDecoration(
                                  color: Colors.black12,
                                  border: Border.all(
                                      color: Colors.white
                                  )
                              ),
                              child: Center(
                                child: Text("Register Now",style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: MediaQuery.sizeOf(context).height * 0.03
                                ),),

                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 30,
                  child: Container(
                    width: width *1,
                    color: Colors.orange,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Text("Quick Login With Touch Id",style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: MediaQuery.sizeOf(context).height * 0.02
                          ),),
                          SizedBox(height: MediaQuery.sizeOf(context).height * 0.03,),
                          Icon(Icons.fingerprint,
                            color: Colors.white,size: MediaQuery.sizeOf(context).height * 0.08,),
                          Text("Use Touch Id",style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: MediaQuery.sizeOf(context).height * 0.02,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.black,
                            decorationThickness: 1
                          ),),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )
        ),
      )
    );
  }
}
