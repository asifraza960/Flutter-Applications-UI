import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'New_task.dart';

class Today extends StatefulWidget {
  const Today({super.key});

  @override
  State<Today> createState() => _TodayState();
}

class _TodayState extends State<Today> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    var Size(:height, :width) = size;
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new_outlined),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Today",
                  style: GoogleFonts.lato(
                      fontSize: MediaQuery.sizeOf(context).height * 0.06,
                      fontWeight: FontWeight.bold),
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context,  MaterialPageRoute(builder: (context) => NewTask())
                    );
                  },
                  child: Container(
                    height: height * 0.06,
                    width: width * 0.3,
                    decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(50)),
                    child: Center(
                        child: Text(
                      "Add task",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )),
                  ),
                )
              ],
            ),
            Text(
              "Productive Day,Sourav",
              style: GoogleFonts.lato(
                  fontSize: MediaQuery.sizeOf(context).height * 0.02,
                  color: Colors.black45,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'April, 2024',
              style: GoogleFonts.lato(
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.sizeOf(context).height * 0.03),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        "Sun",
                        style: TextStyle(
                            color: Colors.redAccent.withOpacity(0.5),
                            fontSize: MediaQuery.sizeOf(context).height * 0.02),
                      ),
                      Text(
                        '1',
                        style: TextStyle(
                            color: Colors.redAccent,
                            fontWeight: FontWeight.bold,
                            fontSize: MediaQuery.sizeOf(context).height * 0.02),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "Mon",
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                            fontSize: MediaQuery.sizeOf(context).height * 0.02),
                      ),
                      Text(
                        '2',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: MediaQuery.sizeOf(context).height * 0.02),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "Tud",
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                            fontSize: MediaQuery.sizeOf(context).height * 0.02),
                      ),
                      Text(
                        '3',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: MediaQuery.sizeOf(context).height * 0.02),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "Wed",
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                            fontSize: MediaQuery.sizeOf(context).height * 0.02),
                      ),
                      Text(
                        '4',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: MediaQuery.sizeOf(context).height * 0.02),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "Thu",
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                            fontSize: MediaQuery.sizeOf(context).height * 0.02),
                      ),
                      Text(
                        '5',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: MediaQuery.sizeOf(context).height * 0.02),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "Fri",
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                            fontSize: MediaQuery.sizeOf(context).height * 0.02),
                      ),
                      Text(
                        '6',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: MediaQuery.sizeOf(context).height * 0.02),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'Sat',
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                            fontSize: MediaQuery.sizeOf(context).height * 0.02),
                      ),
                      Text(
                        '7',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: MediaQuery.sizeOf(context).height * 0.02),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                      Text(
                        "9 PM",
                        style: GoogleFonts.lato(
                            fontSize: MediaQuery.sizeOf(context).height * 0.02,
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        height: height * 0.1,
                        width: width  * 0.70,
                        decoration: BoxDecoration(
                          color: Colors.cyan.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(30)
                        ),
                        child:   Padding(
                          padding: const EdgeInsets.only(left: 15.0,top: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Tea Time",style: GoogleFonts.lato(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: MediaQuery.sizeOf(context).height * 0.02,
                              ),),
                              Text("A sip of calm and flavor",style: GoogleFonts.lato(
                                color: Colors.black45,
                                fontWeight: FontWeight.bold,
                                fontSize: MediaQuery.sizeOf(context).height * 0.02,
                              ),),
                            ],
                          ),
                        ),
                      )
                    ],

              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    "10 PM",
                    style: GoogleFonts.lato(
                        fontSize: MediaQuery.sizeOf(context).height * 0.02,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        "11 PM",
                        style: GoogleFonts.lato(
                            fontSize: MediaQuery.sizeOf(context).height * 0.02,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        "12 PM",
                        style: GoogleFonts.lato(
                            fontSize: MediaQuery.sizeOf(context).height * 0.02,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: height * 0.20,
                  width: width * 0.72,
                  decoration: BoxDecoration(
                      color: Colors.amber.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(30)),
                  child:  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Project Research",style: GoogleFonts.lato(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.sizeOf(context).height * 0.02,
                        ),),
                        SizedBox(height: 20,),
                        Text("Discuss which the colleague",style: GoogleFonts.lato(
                          color: Colors.black45,
                          fontSize: MediaQuery.sizeOf(context).height * 0.02,
                        ),),
                        Text("about the future plan",style: GoogleFonts.lato(
                          color: Colors.black45,
                          fontSize: MediaQuery.sizeOf(context).height * 0.02,
                        ),),
                      ],
                    ),
                  )),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80 , top: 28.0),
              child: Divider(
                color: Colors.black45,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text(
                "1 AM",
                style: GoogleFonts.lato(
                    fontSize: MediaQuery.sizeOf(context).height * 0.02,
                    fontWeight: FontWeight.bold),
              ),
            ),
          
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        "2 PM",
                        style: GoogleFonts.lato(
                            fontSize: MediaQuery.sizeOf(context).height * 0.02,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        "3 PM",
                        style: GoogleFonts.lato(
                            fontSize: MediaQuery.sizeOf(context).height * 0.02,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),

                Container(
                    height: height * 0.15,
                    width: width * 0.72,
                    decoration: BoxDecoration(
                        color: Colors.blueGrey.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(30)),
                    child:  Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Work On Medical App",style: GoogleFonts.lato(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: MediaQuery.sizeOf(context).height * 0.02,
                          ),),
                          SizedBox(height: 10,),
                          Text("Add medicine tab",style: GoogleFonts.lato(
                            color: Colors.black45,
                            fontSize: MediaQuery.sizeOf(context).height * 0.02,
                          ),),

                        ],
                      ),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
