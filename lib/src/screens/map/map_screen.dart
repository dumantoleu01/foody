import 'package:flutter/material.dart';

class MapScreen extends StatefulWidget {
  MapScreen({Key key}) : super(key: key);

  @override
  _MapState createState() => _MapState();
}

class _MapState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('MapScreen'));
  }
}
