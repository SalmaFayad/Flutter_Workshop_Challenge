import 'package:flutter/material.dart';
class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Column(
               children: [
                 CircleAvatar(
                   radius: 50.0,
                   backgroundImage: AssetImage('assets/profilepic.jpg'),
                 ),
                 SizedBox(height: 20.0,),
                 Text('Salma Mohammed',
                 style: TextStyle(
                   fontSize: 20.0,
                   fontWeight: FontWeight.bold,
                 ),),
                 SizedBox(height: 20.0,),
                 Text('salma.fayad203@gmail.com',
                   style: TextStyle(
                     fontSize: 18.0,
                     fontWeight: FontWeight.w300,
                   ),),
               ],
             ),

           ],
          ),
        ),
        Divider(
          color: Colors.grey,
          height: 20.0,
          endIndent: 30.0,
          indent: 30.0,
        ),
        ListTile(
          leading: Icon(Icons.dashboard,
              color: Color(0xFFA201FF)),
          title:Text('Dashboard',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w400,
          ),),
        ),
        ListTile(
          leading: Icon(Icons.payments_rounded,
          color: Color(0xFFA201FF),),
          title:Text('Payment History',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w400,
            ),),
        ),
        ListTile(
          leading: Icon(Icons.stacked_bar_chart,
              color: Color(0xFFA201FF)),
          title:Text('Statics',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w400,
            ),),
        ),
        ListTile(
          leading: Icon(Icons.wine_bar,
              color: Color(0xFFA201FF)),
          title:Text('Reward',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w400,
            ),),
        ),
        ListTile(
          leading: Icon(Icons.logout,
              color: Color(0xFFA201FF)),
          title:Text('Log Out',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w400,
            ),),
        ),
      ],
    );
  }
}