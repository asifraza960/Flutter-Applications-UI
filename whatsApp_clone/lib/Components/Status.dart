import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Status extends StatelessWidget {
  const Status({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    var Size(:width,:height) =size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: height * 0.20,
                  width:  width * 0.20,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image:NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSx6yT7oBWFeKJH-85mTe_LX8XL5RXw1mRFow&s"),
                      fit: BoxFit.cover
                    )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius:25,
                          child: Icon(Icons.person),
                        ),
                        Text("Add status",style: TextStyle(
                          color: Colors.white
                        ),)
                      ],
                    ),
                  ),
                ),
                Container(
                  height: height * 0.20,
                  width:  width * 0.20,
                  decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: NetworkImage("https://cdn.pixabay.com/photo/2018/01/14/23/12/nature-3082832_1280.jpg"),fit: BoxFit.cover
                    )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius:25,
                          child: Icon(Icons.person),
                        ),
                        Text("Arslan Tariq",style: TextStyle(
                            color: Colors.white
                        ),)
                      ],
                    ),
                  ),
                ),
                Container(
                  height: height * 0.20,
                  width:  width * 0.20,
                  decoration: BoxDecoration(
                      color: Colors.indigo,
                      borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQoOGnoNx-npHy06IrYn8X5i8PvxVDq64KBe0mDbloSIztWaRhEXVFzNUYwm_2bJWp6Xvg&usqp=CAU"),
                      fit: BoxFit.cover
                    )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius:25,
                          child: Icon(Icons.person),
                        ),
                        Text("Ali Raza",style: TextStyle(
                            color: Colors.white
                        ),)
                      ],
                    ),
                  ),
                ), Container(
                  height: height * 0.20,
                  width:  width * 0.20,
                  decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                              image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6-pi_C1eqMmirL7ajU2BHtCat0tIMTCVrvw&s"),
                          fit: BoxFit.cover
                      ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius:25,
                          child: Icon(Icons.person),
                        ),
                        Text("Noor",style: TextStyle(
                            color: Colors.white
                        ),)
                      ],
                    ),
                  ),
                ),
                Container(
                  height: height * 0.20,
                  width:  width * 0.20,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6-pi_C1eqMmirL7ajU2BHtCat0tIMTCVrvw&s"),
                        fit: BoxFit.cover
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius:25,
                          child: Icon(Icons.person),
                        ),
                        Text("Noor",style: TextStyle(
                            color: Colors.white
                        ),)
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          ListTile(
            trailing: Text("Explore",style: TextStyle(
              fontSize: MediaQuery.sizeOf(context).height * 0.02,
            ),),
            leading: Text("Channel",style: TextStyle(
                fontSize: MediaQuery.sizeOf(context).height * 0.03,
            ),),
          ),
          Divider(
            color: Colors.black12,
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQu1234jIujpOY2653qNVqa6r2CDTFG1LcsQw&s"),
            ),
            title: Text("Geo TV"),
            subtitle: Text("Full Episode Here"),
            trailing: Column(
              children: [
                Text("Monday"),
                Icon(Icons.circle_notifications_rounded,color: Colors.green,)
              ],
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/3/38/ARY_Qtv_logo.png"),
            ),
            title: Text("ARY TV"),
            subtitle: Text("Full Episode Here"),
            trailing:Column(
              children: [
                Text("yesterday"),
                Icon(Icons.circle_notifications_rounded,color: Colors.green,)
              ],
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/en/e/e1/92_News_HD_Plus_logo.png"),
            ),
            title: Text("92 news"),
            subtitle: Text("Full Episode Here"),
            trailing: Column(
              children: [
                Text("Yesterday"),
                Icon(Icons.circle_notifications_rounded,color: Colors.grey,)
              ],
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQu1234jIujpOY2653qNVqa6r2CDTFG1LcsQw&s"),
            ),
            title: Text("Geo TV"),
            subtitle: Text("Full Episode Here"),
            trailing: Column(
              children: [
                Text("Thursday"),
                Icon(Icons.circle_notifications_rounded,color: Colors.green,)
              ],
            ),
          ),

          ListTile(
            leading: Text("Find channel to follow",style: TextStyle(
              fontSize: MediaQuery.sizeOf(context).height * 0.02,
            ),),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQu1234jIujpOY2653qNVqa6r2CDTFG1LcsQw&s"),
            ),
            title: Text("Geo TV"),
            subtitle: Text("Full Episode Here"),
            trailing: Column(
              children: [
                Text("Yesterday"),
                Icon(Icons.circle_notifications_rounded,color: Colors.green,)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
