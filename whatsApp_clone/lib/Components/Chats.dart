import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  const Chats({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Column(
        children: [
          ListTile(
            onTap: () {},
            leading: CircleAvatar(
              backgroundImage: NetworkImage("https://buffer.com/library/content/images/size/w1200/2023/10/free-images.jpg"),
            ),
            trailing: Text("7 :10 am"),
            title: Text("Asif Raza"),
            subtitle: Text("Beauty", style: TextStyle(
                color: Colors.black45
            ),),
          ),
          ListTile(
            onTap: () {},
            leading: CircleAvatar(
              backgroundImage: NetworkImage("https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg"),
            ),
            trailing: Text("1:00 am"),
            title: Text("Arslan Tariq"),
            subtitle: Text("Vibes", style: TextStyle(
                color: Colors.black45
            ),),
          ),
          ListTile(
            onTap: () {},
            leading: CircleAvatar(
              backgroundColor: Colors.black,
              child: Icon(Icons.person,color: Colors.white,),
            ),
            trailing: Text("5: 10 pm"),
            title: Text("Ali Raza"),
            subtitle: Text("Everyone", style: TextStyle(
                color: Colors.black45
            ),),
          ),
          ListTile(
            onTap: () {},
            leading: CircleAvatar(
              backgroundColor: Colors.grey,
              child: Icon(Icons.person,color: Colors.white,),
            ),
            trailing: Text("5:00 pm"),
            title: Text("Sheraz khan"),
            subtitle: Text("All is Well", style: TextStyle(
                color: Colors.black45
            ),),
          ),
          ListTile(
            onTap: () {},
            leading: CircleAvatar(
              backgroundImage: NetworkImage('https://media.istockphoto.com/id/1353162658/photo/am-i-lost.jpg?s=612x612&w=0&k=20&c=rMpsouHJcFVYXdmHS2bW7yQEUijAcTB0DioNTjO4PTo='),
            ),
            trailing: Text("4:00 pm"),
            title: Text("Ijaz Ahmad"),
            subtitle: Text("Vibes", style: TextStyle(
                color: Colors.black45
            ),),
          ),
          ListTile(
            onTap: () {},
            leading: CircleAvatar(
              backgroundColor: Colors.cyan,
              child: Icon(Icons.person,color: Colors.white,),
            ),
            trailing: Text("3:00 pm"),
            title: Text("Muhammad Abdullah"),
            subtitle: Text("All is Well", style: TextStyle(
                color: Colors.black45
            ),),
          ),
          ListTile(
            onTap: () {},
            leading: CircleAvatar(
              backgroundColor: Colors.indigo,
              child: Icon(Icons.person,color: Colors.white,),
            ),
            trailing: Text("12 am"),
            title: Text("Ali Akmal"),
            subtitle: Text("akmal vibes", style: TextStyle(
                color: Colors.black45
            ),),
          ),
          ListTile(
            onTap: () {},
            leading: CircleAvatar(
              backgroundColor: Colors.lightGreen,
              child: Icon(Icons.person,color: Colors.white,),
            ),
            trailing: Text("1 am"),
            title: Text("uzair khan"),
            subtitle: Text("uzair vibes", style: TextStyle(
                color: Colors.black45
            ),),
          ),
          ListTile(
            onTap: () {},
            leading: CircleAvatar(
              backgroundColor: Colors.purpleAccent,
              child: Icon(Icons.person,color: Colors.white,),
            ),
            trailing: Text("12 am"),
            title: Text("Noor khan"),
            subtitle: Text("noor vibes", style: TextStyle(
                color: Colors.black45
            ),),
          ),
          ListTile(
            onTap: () {},
            leading: CircleAvatar(
              backgroundColor: Colors.blueGrey,
              child: Icon(Icons.person,color: Colors.white,),
            ),
            trailing: Text("11 am"),
            title: Text("Ayesha khan"),
            subtitle: Text("vibes", style: TextStyle(
                color: Colors.black45
            ),),
          ),
        ],

      );

  }
}
