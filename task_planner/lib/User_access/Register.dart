import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Custom/Custom_cliper.dart';
import 'Login.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}
class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    var Size(:height,:width) = size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipPath(
            clipper: MyCustomClipper(),
            child: Container(
              height: 200,
              width: double.infinity,
              color: Colors.orangeAccent,
            ),
          ),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.02,),
          Center(
            child: Text("Task Planner",style: GoogleFonts.cambo(
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 50.0),
              child: Text("plane task",style: GoogleFonts.cambo(
                fontWeight: FontWeight.bold,
                color: Colors.black45,
              ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Name",style: GoogleFonts.cambo(
                    fontWeight: FontWeight.bold
                ),
                ),
                TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey.withOpacity(0.2),
                      border: OutlineInputBorder(
                      )
                  ),
                ),
                SizedBox(height: MediaQuery.sizeOf(context).height * 0.03,),
                Text("Email",style: GoogleFonts.cambo(
                    fontWeight: FontWeight.bold
                ),
                ),
                TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey.withOpacity(0.2),
                      hintText: '@gmail.com',
                      border: OutlineInputBorder(
                      )
                  ),
                ),
                SizedBox(height: MediaQuery.sizeOf(context).height * 0.03,),
                Text("Password",style: GoogleFonts.cambo(
                    fontWeight: FontWeight.bold
                ),
                ),
                TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey.withOpacity(0.2),
                      border: OutlineInputBorder(
                      )
                  ),
                ),
                SizedBox(height: MediaQuery.sizeOf(context).height * 0.03,),
                Text("Confirm password",style: GoogleFonts.cambo(
                    fontWeight: FontWeight.bold
                ),
                ),
                TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey.withOpacity(0.2),
                      border: OutlineInputBorder(
                      )
                  ),
                ),
                SizedBox(height: MediaQuery.sizeOf(context).height * 0.03,),
                InkWell(
                  onTap: (){
                    Navigator.push(context,  MaterialPageRoute(builder: (context) => Login())
                    );
                  },
                  child: Container(
                    height: height * 0.05,
                    width: width*1,
                    decoration: BoxDecoration(
                        color: Colors.orangeAccent
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
                SizedBox(height: MediaQuery.sizeOf(context).height * 0.02,),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text("Already have an account? ",style: TextStyle(
                       color: Colors.black,
                       fontWeight: FontWeight.bold,
                       fontSize: MediaQuery.sizeOf(context).height * 0.02
                   ),),
                   InkWell(
                     onTap: (){
                         Navigator.push(context,  MaterialPageRoute(builder: (context) => Login())
                         );
                     },
                     child: Text("Login",style: TextStyle(
                         color: Colors.orange,
                         fontWeight: FontWeight.bold,
                         fontSize: MediaQuery.sizeOf(context).height * 0.02
                     ),),
                   ),
                 ],
               )
              ],
            ),
          )
        ],
      ),
    );
  }
}
