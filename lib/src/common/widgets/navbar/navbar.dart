import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  NavBar({Key key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.add), label: 'Лента'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.map), label: 'Карта'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.heart), label: 'Избранный'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.add_circled), label: 'Купоны'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home), label: 'Профиль'),
        ],
      ),
    );
  }
}
