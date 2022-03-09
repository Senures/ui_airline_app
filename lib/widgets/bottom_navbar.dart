import 'package:air_app_ui/pages/home.dart';
import 'package:air_app_ui/pages/profile.dart';
import 'package:air_app_ui/pages/search.dart';
import 'package:air_app_ui/pages/tickets.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  static List<Widget> _pageList = <Widget>[
    Home(),
    Search(),
    Tickets(),
    Profile()
  ];
  int selectIndex = 0;

  selectedPage(int val) {
    setState(() {
      selectIndex = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pageList.elementAt(selectIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10.0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedLabelStyle: const TextStyle(fontSize: 20, color: Colors.black),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xFF4066EA),
        unselectedItemColor: const Color(0xFF526480),
        currentIndex: selectIndex,
        onTap: selectedPage,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 27.0,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              size: 27.0,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.airplane_ticket_sharp,
              size: 27.0,
            ),
            label: 'Tickets',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              size: 27.0,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
