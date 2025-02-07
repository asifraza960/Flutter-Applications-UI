import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_planner/component/MyCustomPainter.dart';

import '../component/MyCustomPainter2.dart';
import 'Today.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    var Size(:height, :width) = size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: Column(
              children: [
                Container(
                    height: height * 0.25,
                    width: width * 1,
                    decoration: BoxDecoration(
                        color: Colors.orangeAccent.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(3, 3),
                          blurRadius: 5,
                          color: Colors.black.withOpacity(0.1)

                        )
                      ]
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [Icon(Icons.menu), Icon(Icons.search)],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30.0,top: 20),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  radius: 50,
                                  backgroundColor: Colors.teal,
                                  backgroundImage: AssetImage('asset/images/cat.jpg'),

                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "M.Asif Raza",
                                      style: GoogleFonts.aDLaMDisplay(
                                        fontSize: MediaQuery.sizeOf(context).height * 0.03
                                      )

                                    ),
                                    Text(
                                      "Flutter Developer",
                                      style: GoogleFonts.cambo(
                                        color: Colors.black45,
                                        fontSize:
                                        MediaQuery.sizeOf(context).height *
                                            0.02,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "My Tasks",
                        style:GoogleFonts.actor(
                          color: Colors.black,
                          fontSize: MediaQuery.sizeOf(context).height * 0.03,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.teal.withOpacity(0.7),
                        child: Icon(
                          Icons.date_range,
                          size: 20,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.redAccent.withOpacity(0.7),
                      radius: 20,
                      child: Icon(
                        Icons.watch_later,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.push(context,  MaterialPageRoute(builder: (context) => Today())
                              );
                            },
                            child: Text(
                              "To Do",
                              style:GoogleFonts.actor(
                                color: Colors.black,
                                fontSize:
                                MediaQuery.sizeOf(context).height * 0.02,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Text(
                            "5 tasks now.1 started",
                            style:GoogleFonts.cambo(
                              color: Colors.black45,
                              fontSize:
                              MediaQuery.sizeOf(context).height * 0.02,
                            ),
                          ),
                        ]),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.orangeAccent.withOpacity(0.7),
                      radius: 20,
                      child: Icon(
                        Icons.watch_later,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "In Progress",
                            style: GoogleFonts.actor(
                              color: Colors.black,
                              fontSize:
                              MediaQuery.sizeOf(context).height * 0.02,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "1task now.1 started",
                            style: GoogleFonts.cambo(
                              color: Colors.black45,
                              fontSize:
                              MediaQuery.sizeOf(context).height * 0.02,
                            ),
                          ),
                        ]),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.purple.withOpacity(0.7),
                      radius: 20,
                      child: Icon(
                        Icons.approval,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Done",
                            style: GoogleFonts.actor(
                              color: Colors.black,
                              fontSize:
                              MediaQuery.sizeOf(context).height * 0.02,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "1 tasks done.1 started",
                            style: GoogleFonts.cambo(
                              color: Colors.black45,
                              fontSize:
                              MediaQuery.sizeOf(context).height * 0.02,
                            ),
                          ),
                        ]),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0,top: 15),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Active Projects",
                      style: GoogleFonts.actor(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize:
                        MediaQuery.sizeOf(context).height * 0.03,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                          height: height * 0.30,
                          width: width * 0.40,
                          decoration: BoxDecoration(
                              color: Colors.teal.withOpacity(0.8),
                              borderRadius: BorderRadius.circular(50)),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 30,left: 20.0,bottom: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: CustomPaint(
                                    painter: MyCustomPainter(),
                                    child: Text("25%",style: TextStyle(
                                        color: Colors.white
                                    ),),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text("Making History",style: GoogleFonts.cambo(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold
                                ),),
                                Text("Notes",style: GoogleFonts.cambo(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold
                                ),),
                                Text("20 hours progress",style: GoogleFonts.cambo(
                                    color: Colors.white70,
                                    fontWeight: FontWeight.bold
                                ),),
                              ],
                            ),
                          )
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      Container(
                        height: height * 0.30,
                        width: width * 0.40,
                        decoration: BoxDecoration(
                            color: Colors.redAccent,
                            borderRadius: BorderRadius.circular(50)),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 30,left: 20.0,bottom: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: CustomPaint(
                                  painter: MyCustomPainter2(),
                                  child: Text("85%",style: TextStyle(
                                      color: Colors.white
                                  ),),
                                ),
                              ),
                              SizedBox(height: 10,),
                              Text("Making History",style: GoogleFonts.cambo(
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                              ),),
                              Text("Notes",style: GoogleFonts.cambo(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                              ),),
                              Text("20 hours progress",style: GoogleFonts.cambo(
                                  color: Colors.white70,
                                  fontWeight: FontWeight.bold
                              ),),
                            ],
                          ),
                        )
                      )
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
