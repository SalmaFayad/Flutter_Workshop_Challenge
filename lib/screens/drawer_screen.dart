import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
     child: Drawer(
       child: ListView(
         padding: EdgeInsets.zero,
         children: <Widget>[
           DrawerHeader(
             child: Column(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 CircleAvatar(
                   radius: 40.0,
                   backgroundImage: AssetImage('assets/profilepic.jpg'),
                 ),
                 Text('Salma Mohammed',
                   style: TextStyle(
                     fontSize: 20.0,
                     fontWeight: FontWeight.w600,
                   ),),
               ],
             ),
             decoration: BoxDecoration(
               color: Color(0xFFA201FF),
             ),
           ),
           ListTile(
             title: Text('Home',
               style: TextStyle(
                   fontSize: 18.0
               ),),
             leading: Icon(Icons.home,
               color: Color(0xFFA201FF)),
           ),
           ListTile(
             title: Text('Add Contact',
               style: TextStyle(
                   fontSize: 18.0
               ),),
             leading: Icon(CupertinoIcons.phone_badge_plus,
               color: Color(0xFFA201FF)),
           ),
           ListTile(
             title: Text('Notifications',
               style: TextStyle(
                   fontSize: 18.0
               ),),
             leading: Icon(Icons.notifications_active,
               color: Color(0xFFA201FF)),
           ),
           ListTile(
             title: Text('Language',
               style: TextStyle(
                   fontSize: 18.0
               ),),
             leading: Icon(Icons.language,
               color: Color(0xFFA201FF)),
           ),
           ListTile(
             title: Text('Logout',
               style: TextStyle(
                   fontSize: 18.0
               ),),
             leading: Icon(Icons.logout,
               color: Color(0xFFA201FF)),
           ),
         ],
       ),
     ),
    );
  }
}
