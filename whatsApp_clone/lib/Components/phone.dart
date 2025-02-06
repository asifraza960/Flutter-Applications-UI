import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Phone extends StatelessWidget {
  const Phone({super.key});

  @override
  Widget build(BuildContext context) {
    return   SingleChildScrollView(
      child: Column(
        children: [
          ListTile(
            onTap: () {},
            leading: CircleAvatar(
              backgroundColor: Colors.grey,
              child: Icon(Icons.person,color: Colors.white,),
            ),
            trailing: Icon(Icons.phone,),
            title: Text("Asif Raza"),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Beauty", style: TextStyle(
                    color: Colors.black45
                ),),
                Text("Miss call", style: TextStyle(
                    color: Colors.redAccent
                ),),
              ],
            ),
          ),
          ListTile(
            onTap: () {},
            leading: CircleAvatar(
              backgroundColor: Colors.redAccent,
              child: Icon(Icons.person,color: Colors.white,),
            ),
            trailing:  Icon(Icons.phone,),
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
            trailing:  Icon(Icons.phone,),
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
            trailing: Icon(Icons.phone,),
            title: Text("Sheraz khan"),
            subtitle: Text("All is Well", style: TextStyle(
                color: Colors.black45
            ),),
          ),
          ListTile(
            onTap: () {},
            leading: CircleAvatar(
              backgroundColor: Colors.teal,
              child: Icon(Icons.person,color: Colors.white,),
            ),
            trailing:  Icon(Icons.phone,),
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
            trailing:  Icon(Icons.phone,),
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
            trailing:  Icon(Icons.phone,),
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
            trailing: Icon(Icons.phone,),
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
            trailing:  Icon(Icons.phone,),
            title: Text("Noor khan"),
            subtitle: Text("noor vibes", style: TextStyle(
                color: Colors.black45
            ),),
          ),
        ],
      ),
    );

  }
}
