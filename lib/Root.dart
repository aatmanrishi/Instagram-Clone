import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_clone/Pages/Home.dart';
import 'package:instagram_clone/Pages/Profile.dart';
import 'package:instagram_clone/Pages/Search.dart';

class Root extends StatefulWidget {
  // Use a more descriptive name like RootPage
  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<Root> {
  int _selectedIndex = 0;

  final List<Widget> screens = [
    // Add your content widgets here for each tab
    Home(),
    Search(),
    const Center(child: Text('Profile')), // Added Profile tab
    Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() { // Update state to trigger a rebuild
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: screens[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: TextStyle(color:Colors.redAccent, fontSize: 5),
        unselectedLabelStyle: TextStyle(color: Colors.transparent),
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home_sharp),
            label: '.',
            
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined),
            label: '.',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.circlePlay ,size: 22),
            label: '.',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            activeIcon: Icon(Icons.person),
            label: '.',
          ),
        ],
      ),
    );
  }
}