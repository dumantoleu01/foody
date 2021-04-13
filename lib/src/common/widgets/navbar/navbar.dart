import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foody/src/common/icons/foody_icons.dart';
import 'package:foody/src/screens/Coupons/coupons_screen.dart';
import 'package:foody/src/screens/favorite/favorite_screen.dart';
import 'package:foody/src/screens/home/home.dart';
import 'package:foody/src/screens/map/map_screen.dart';
import 'package:foody/src/screens/profile/profile_screen.dart';

class NavBar extends StatefulWidget {
  NavBar({Key key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  List<Widget> myPageClasses = [
    Home(),
    MapScreen(),
    Favorite(),
    Coupons(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBuilder: (BuildContext context, currentIndex) {
        return CupertinoPageScaffold(
          child: myPageClasses[currentIndex],
        );
      },
      tabBar: CupertinoTabBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(FoodyFont.kitchen), label: 'Лента'),
          BottomNavigationBarItem(
              icon: Icon(FoodyFont.location), label: 'Карта'),
          BottomNavigationBarItem(
              icon: Icon(FoodyFont.favorite), label: 'Избранный'),
          BottomNavigationBarItem(
              icon: Icon(FoodyFont.ticket), label: 'Купоны'),
          BottomNavigationBarItem(
              icon: Icon(FoodyFont.profile), label: 'Профиль'),
        ],
      ),
    );
  }
}
