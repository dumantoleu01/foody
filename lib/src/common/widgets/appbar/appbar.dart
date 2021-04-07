import 'package:flutter/material.dart';

class AppBarTitle extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const AppBarTitle({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(
        color: Colors.black, //change your color here
      ),
      centerTitle: true,
      backgroundColor: Color(0xFFFEFEFE),
      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'Manrope',
          color: Colors.black,
          fontWeight: FontWeight.w500,
          fontSize: 15,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
