import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:first_challenge/models/mails_generator.dart';
class MailScreen extends StatelessWidget {
  List<MailGenerator>eMails=[
    MailGenerator(name:'Salma Mohammed' ,eMail: 'salma299@yahoo.com'),
    MailGenerator(name: 'Nada Ashraf',eMail: 'nadaAshraf876@gmail.com'),
    MailGenerator(name: 'Mohammed Ali',eMail: 'mohammedali564@gmail.com'),
    MailGenerator(name: 'Aya Magdy',eMail: 'ayamagdy768@gmail.com'),
    MailGenerator(name: 'Hala Iberahim',eMail: 'halaibrahim5634@gmail.com'),
    MailGenerator(name: 'Fady Moaz',eMail: 'fadymoazz233@gmail.com'),
    MailGenerator(name: 'Naha Saber',eMail: 'nohasaber276@gmail.com'),
    MailGenerator(name: 'Sara Ahmed',eMail: 'saraahmed987@gmail.com'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: eMails.length,
        itemBuilder: (context,index){
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 2.0),
            child: Container(
              width: 350.0,
              height: 90.0,
              margin: EdgeInsets.symmetric(vertical: 6.0 ,horizontal: 10.0),
              decoration: BoxDecoration(
                color:Color(0xFFA201FF),
                borderRadius: BorderRadius.all(Radius.circular(12.0)),
              ),
              child: Card(
                child: ListTile(
                  tileColor: Color(0xFFA201FF),
                  title: Text(eMails[index].name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),),
                  leading: CircleAvatar(
                    backgroundColor: Color(0XFF0B1033),
                    child: Icon(Icons.mail,
                  ),
                  ),
                  subtitle: Text(eMails[index].eMail,
                  style: TextStyle(
                    fontSize:17.0,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}