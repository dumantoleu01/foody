import 'package:flutter/material.dart';

class Favorite extends StatefulWidget {
  Favorite({Key key}) : super(key: key);

  @override
  _FavoriteScreenState createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Favorite'),
    );
  }
}
