import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            color: Colors.pink,
            height: 120,
            width: double.infinity,
          ),

          SizedBox(height: 20,),

          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
            onTap: (){},
            // trailing: ,
          ),
          ListTile(
            leading: Icon(Icons.close),
            title: Text("Close Drawer"),
            onTap: (){
              Navigator.of(context).pop();
            },
            // trailing: ,
          ),
        ],
      ),
    );
  }
}