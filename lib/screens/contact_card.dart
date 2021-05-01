import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardContent extends StatelessWidget {
  CardContent({this.name, this.email, this.phone, this.image, this.fav});
  final String name;
  final String email;
  final String phone;
  final String image;
  final String fav;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350.0,
      height: 150.0,
      margin: EdgeInsets.symmetric(vertical: 10.0 ,horizontal: 10.0),
      decoration: BoxDecoration(
        color:Color(0xFFA201FF),
        borderRadius: BorderRadius.all(Radius.circular(12.0)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 30.0,
              backgroundImage: AssetImage(image),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.mail,
                      color: Colors.black,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text(
                        email,
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      CupertinoIcons.phone,
                      color: Colors.black,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text(
                        phone,
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      CupertinoIcons.heart_fill,
                      color: Colors.red,
                    ),
                    Icon(
                      CupertinoIcons.heart_fill,
                      color: Colors.red,
                    ),
                    Icon(
                      CupertinoIcons.heart_fill,
                      color: Colors.red,
                    ),
                    Icon(
                      CupertinoIcons.bolt_fill,
                      color: Colors.yellow,
                    ),
                    Text(
                      fav,
                      style: TextStyle(fontSize: 18),
                    ),
                    Icon(
                      CupertinoIcons.delete,
                      color: Colors.white,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}