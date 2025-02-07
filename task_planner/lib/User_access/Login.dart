import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Custom/Custom_cliper.dart';
import '../task_planner/Home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                height: 300,
                width: double.infinity,
                color: Colors.orangeAccent,
              ),
            ),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.02,),
          Center(
            child: ShaderMask(
              shaderCallback: (Rect  bounds){
                return RadialGradient(
                  radius: 2,
                    tileMode: TileMode.repeated,
                    colors: [
                      Colors.black,
                      Colors.orange,
                      Colors.orange,
                      Colors.black,
                    ],
                ).createShader(bounds);
    },
              child: Text("Task Planner",style: GoogleFonts.cambo(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 22,
                  ),
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
                Text("Enter id",style: GoogleFonts.cambo(
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
                      hintText: '@gmail.com',
                      border: OutlineInputBorder(
                      )
                  ),
                ),
                SizedBox(height: MediaQuery.sizeOf(context).height * 0.03,),
                InkWell(
                  onTap: (){
                    Navigator.push(context,  MaterialPageRoute(builder: (context) =>Home ())
                    );
                  },
                  child: Container(
                    height: height * 0.05,
                    width: width*1,
                    decoration: BoxDecoration(
                      color: Colors.orangeAccent
                    ),
                    child: Center(
                      child: Text("Login",style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.sizeOf(context).height * 0.03
                      ),),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text("Forget password?",style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                  ),),
                ),
                SizedBox(height: MediaQuery.sizeOf(context).height * 0.02,),
                Divider(
                  color: Colors.black45,
                ),
                Container(
                  height: height * 0.05,
                  width: width*1,
                  decoration: BoxDecoration(
                    color: Colors.blue[800]
                  ),
                    child: Row(
                      children: [
                        Container(
                          height: height * 0.05,
                          width: width * 0.08,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyX5hdZiR4ynDOmd6HZpUKo_wKUiEMIoIR0gShDCh45hprtxopPuVO8G21eBFYnFJLVug&usqp=CAU")
                            )
                          ),
                        ),
                        SizedBox(width: MediaQuery.sizeOf(context).width * 0.06,),
                        Text("Login with facebook",style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: MediaQuery.sizeOf(context).height * 0.02
                        ),)
                      ],
                    )
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
