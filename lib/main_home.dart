import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_beast/cold_drinks.dart';
import 'package:food_beast/home.dart';
import 'package:food_beast/home_page.dart';
import 'package:food_beast/profile.dart';

class main_home extends StatefulWidget {

  static const String _title = 'Flutter Code Sample';


  @override
  State<main_home> createState() => _main_homeState();
}

class _main_homeState extends State<main_home> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home,),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.local_fire_department_outlined,),label: 'Trending'),
          BottomNavigationBarItem(icon: Icon(Icons.fastfood,),label: 'Coldrinks'),
          BottomNavigationBarItem(icon: Icon(Icons.person,),label: 'Profile')
        ],
        currentIndex: _selectedIndex, //New
        onTap: _onItemTapped,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.deepOrange,
        // backgroundColor: Color.fromARGB(255, 243, 187, 82),
        //   fixedColor: Color.fromARGB(255, 243, 187, 82)

      ),
      body: new IndexedStack(
        index: _selectedIndex,
        children: <Widget>[
          // new main_home(),
          new home(),
          new home_page(),
          new cold_drinks(),
          new profile(),
          // new YourCustomFeedWidget(),
          // new YourCustomCommunityWidget(),
        ],
      ),

    );

  }
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

}
