// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:navigation_example/pages/home_page.dart';
import 'package:navigation_example/pages/profile_page.dart';
import 'package:navigation_example/pages/settings_page.dart';
//import 'package:navigation_example/pages/second_page.dart';

class FirstPage extends StatefulWidget {
  FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  //this keeps tarck of the current page to display
  int _selectedIndex = 0;

  //this method updates the new selected index
  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List _pages = [
    //homepage
    HomePage(),

    //profilepage
    ProfilePage(),

    //settingspage
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("1st Page"),
        backgroundColor: Colors.lightGreen,
      ),
      body: _pages[_selectedIndex],
      //Yan Menü Bar
      /* drawer: Drawer(
        backgroundColor: Colors.cyan.shade100,
        child: Column(
          children: [
            //common to place a drawer header here
            DrawerHeader(
              child: Icon(
                Icons.favorite,
                size: 48,
              ),
            ),
            //home page list tile
            ListTile(
              leading: Icon(Icons.home),
              title: Text("H O M E"),
              onTap: () {
                //pop drawer first (Pop up kapalı şekilde sayfa açılır)
                Navigator.pop(context);
                Navigator.pushNamed(context, '/homepage');
              },
            ),
            //setting page list tile
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("S E T T I N G S"),
              onTap: () {
                Navigator.pushNamed(context, '/settingspage');
              },
            ),
          ],
        ),
      ),*/

      // body: Center(
      //   child: ElevatedButton(
      //     onPressed: () {
      //       //navigaet second page
      //       // Navigator.push(
      //       //     context,
      //       //     MaterialPageRoute(
      //       //       builder: (context) => SecondPage(),
      //       //     ));
      //       Navigator.pushNamed(context, '/secondpage');
      //     },
      //     child: Text("Go to Second Page"),
      //   ),
      // ),

      //Alt menü bar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        items: [
          //home
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),

          //profile
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),

          //settings
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
