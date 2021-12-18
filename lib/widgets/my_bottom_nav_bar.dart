import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyBottomNavBar extends StatefulWidget {
  const MyBottomNavBar({Key? key}) : super(key: key);

  @override
  _MyBottomNavBarState createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.shifting,
      fixedColor: Colors.green,
      unselectedIconTheme: const IconThemeData(color: Colors.grey),
      currentIndex: _currentIndex,
      onTap: (value) => setState(() {
        _currentIndex = value;
      }),
      items: const [
        BottomNavigationBarItem(
          label: 'Home',
          icon: Icon(
            FontAwesomeIcons.home,
          ),
        ),
        BottomNavigationBarItem(
          label: 'Bookmark',
          icon: Icon(FontAwesomeIcons.solidBookmark),
        ),
        BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.plus), label: 'Book Service'),
        BottomNavigationBarItem(
          label: 'Support',
          icon: Icon(FontAwesomeIcons.phone),
        ),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile')
      ],
    );
  }
}
