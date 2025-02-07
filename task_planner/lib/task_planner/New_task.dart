import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewTask extends StatefulWidget {
  const NewTask({super.key});

  @override
  State<NewTask> createState() => _NewTaskState();
}

class _NewTaskState extends State<NewTask> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    var Size(:height, :width) = size;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: height * 0.40,
            width: width * 1,
            decoration: BoxDecoration(
                color: Colors.orangeAccent.withOpacity(0.5),
                borderRadius: BorderRadius.circular(30)),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.arrow_back_ios_new_outlined),
                  SizedBox(height: MediaQuery.sizeOf(context).height * 0.07),
                  Text(
                    "Create new task",
                    style: GoogleFonts.lato(
                        textBaseline: TextBaseline.ideographic,
                        fontSize: MediaQuery.sizeOf(context).height * 0.03,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          hintText: 'new Task', labelText: 'Title'),
                    ),
                  ),
                  SizedBox(height: MediaQuery.sizeOf(context).height * 0.03),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          hintText: '', labelText: 'Subtitle'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Start Time",
                              style: GoogleFonts.cambo(
                                fontSize: MediaQuery.sizeOf(context).height * 0.02,
                                fontWeight: FontWeight.bold,

                              ),
                            ),
                            SizedBox(width: 20,),
                            Icon(Icons.keyboard_arrow_down_rounded)
                          ],
                        ),
                        Text(
                          "16:30 pm",
                          style: GoogleFonts.cambo(
                            fontSize: MediaQuery.sizeOf(context).height * 0.02,
                            textBaseline: TextBaseline.alphabetic,
                              decoration: TextDecoration.underline

                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "End Time",
                              style: GoogleFonts.cambo(
                                  fontSize: MediaQuery.sizeOf(context).height * 0.02,
                                  fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 20,),
                            Icon(Icons.keyboard_arrow_down_rounded)
                          ],
                        ),
                        Text(
                          "19:30 pm",
                          style: GoogleFonts.cambo(
                            fontSize: MediaQuery.sizeOf(context).height * 0.02,
                            decoration: TextDecoration.underline,
                            textBaseline: TextBaseline.alphabetic
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.sizeOf(context).height * 0.03),
                Text("Description",style: TextStyle(
                    fontSize: MediaQuery.sizeOf(context).height * 0.02,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline
                )
                ),
                SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),
                Text("Add Product Categorise to the",style: TextStyle(
                fontSize: MediaQuery.sizeOf(context).height * 0.02,
                ),
                ),
                Text("dashboard,change vertical scroll to",
                  style: TextStyle(
                    fontSize: MediaQuery.sizeOf(context).height * 0.02,
                  ),
                ),
                Text("horizontal,Draw new icons",
                  style: TextStyle(
                    fontSize: MediaQuery.sizeOf(context).height * 0.02,
                  ),
                ),
                SizedBox(height: MediaQuery.sizeOf(context).height * 0.03),
                Divider(
                  color: Colors.black45,
                ),
                Text(
                  "Catogory",
                  style: GoogleFonts.actor(
                    fontSize: MediaQuery.sizeOf(context).height * 0.02,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height:  height *0.05,
                      width: width * 0.25,
                      decoration: BoxDecoration(
                        color: Colors.red.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Center(
                        child: Text("Sport App",style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold

                        ),),
                      ),
                      
                    ),
                    Container(
                      height:  height *0.05,
                      width: width * 0.30,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.8),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Center(
                        child: Text("Medical app",style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold

                        ),),
                      ),

                    ),
                    Container(
                      height:  height *0.05,
                      width: width * 0.25,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.8),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Center(
                        child: Text("Rent App",style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),),
                      ),

                    )
                  ],
                ),
                SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),
                Row(
                  children: [
                    Container(
                      height:  height *0.05,
                      width: width * 0.15,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.8),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Center(
                        child: Text("Notes",style: TextStyle(
                            color: Colors.black
                            ,
                            fontWeight: FontWeight.bold

                        ),),
                      ),

                    ),
                    SizedBox(width: MediaQuery.sizeOf(context).width * 0.02),
                    Container(
                      height:  height *0.05,
                      width: width * 0.40,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.8),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Center(
                        child: Text("Gaming Plate Form App",style: TextStyle(
                            fontSize: MediaQuery.sizeOf(context).height * 0.014,
                            color: Colors.black,
                            fontWeight: FontWeight.bold

                        ),),
                      ),

                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),
                ElevatedButton(
                  style:ElevatedButton.styleFrom(
                    backgroundColor: Colors.indigo
                  ),
                  onPressed: (){
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text(" Task plane",style:
                            TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                            ),),
                          content: Text("Your task added successfully",style: TextStyle(
                            color: Colors.black
                          ),),
                          backgroundColor: Colors.white,
                          alignment: Alignment.center,
                          actions: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pop(); // Close dialog
                              },
                              style:ElevatedButton.styleFrom(
                                backgroundColor: Colors.black
                              ),
                              child: Text("Yes",style: TextStyle(
                                color: Colors.white
                              ),)
                            ),
                            ElevatedButton(
                              style:ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black
                              ),
                              onPressed: () {
                                Navigator.of(context).pop(); // Close dialog
                              },
                              child: Text("No",style: TextStyle(
                                color: Colors.white
                              ),),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Center(
                    child: Container(
                      height: height * 0.07,
                      width: width * 0.7,
                      decoration: BoxDecoration(
                        color: Colors.indigo.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(30)
                      ),
                      child: Center(
                        child: Text("Create Task",style:TextStyle(
                            fontSize: MediaQuery.sizeOf(context).height * 0.03,
                          color: Colors.white
                        ),),
                      ),
                    ),

                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
