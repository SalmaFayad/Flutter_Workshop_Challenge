import 'package:first_challenge/screens/contact_screen.dart';
import 'package:first_challenge/screens/drawer_screen.dart';
import 'package:first_challenge/screens/mail_screen.dart';
import 'package:first_challenge/screens/profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();

}
class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  List<Widget> _screens = [
    ContactScreen(),
    MailScreen(),
    ProfileScreen()
  ];
  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      //print(_selectedIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_selectedIndex==0 ? 'Contacts'
            :_selectedIndex==1 ? 'Mails'
            :_selectedIndex==2 ?'Profile':'',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),

        ),
      ),
      body: Center(
        child: _screens.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0XFF0B1033),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.phone),
            label: 'Contacts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: 'Mails',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.profile_circled),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xFFA201FF),
        onTap: _onItemTapped,
      ),
     drawer: DrawerScreen(),
    );
  }
}

