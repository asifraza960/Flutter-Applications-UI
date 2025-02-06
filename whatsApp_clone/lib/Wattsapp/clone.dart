import 'package:flutter/material.dart';
import 'package:watsapp_clone/Components/phone.dart';
import '../Components/AppBar.dart';
import '../Components/Chats.dart';
import '../Components/Status.dart';
import '../Components/camera.dart';

class Clone extends StatefulWidget {
  const Clone({super.key});

  @override
  State<Clone> createState() => _CloneState();
}

class _CloneState extends State<Clone> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
              actions: [
                Icon(Icons.search,color: Colors.white,),
                PopupMenuButton(
                  color: Colors.white,

                  itemBuilder: (context) =>[
                    PopupMenuItem(
                        child: Text("Advertise"),
                    ),
                    PopupMenuItem(
                        child: Text("New group")
                    ),
                    PopupMenuItem(
                        child: Text("New broadcast")
                    ),
                    PopupMenuItem(
                        child: Text("Communities")
                    )
                  ],
                    child: Icon(Icons.more_vert,color: Colors.white,)),
              ],
              title: Text(
                "WhatsApp",
                style: TextStyle(color: Colors.white),
              ),
              bottom: TabBar(
                indicatorColor: Colors.white,
                  indicatorSize: TabBarIndicatorSize.label,
                  tabs: [
                Tab(
                  icon: Icon(
                    Icons.camera_alt,
                    color: Colors.white,
                  ),
                ),
                Tab(
                  child: Text('CHATS',style: TextStyle(
                    color: Colors.white
                  ),),
                ),
                Tab(
                  child: Text('STATUS',style: TextStyle(
                      color: Colors.white
                  ),),
                ),
                Tab(
                  child: Text('CALLS',style: TextStyle(
                      color: Colors.white
                  ),),
                ),
              ])
          ),
        body: TabBarView(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Camera()
                ],
              ),
            ),
            Column(
              children: [
                Chats()
              ],
            ),
            Column(
              children: [
                Status()
              ],
            ),
            Column(
              children: [
                Phone()
              ],
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            
          },
          backgroundColor: Colors.green,
          child: MouseRegion(
            cursor: SystemMouseCursors.click,
              child: Icon(Icons.add,color: Colors.white,)),
        ) ,

      ),

    );
  }
}
