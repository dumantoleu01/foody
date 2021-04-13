import 'package:flutter/material.dart';
import 'package:foody/src/common/constants/constant.dart';
import 'package:foody/src/common/widgets/appbar/appbar.dart';

class Filter extends StatefulWidget {
  Filter({Key key}) : super(key: key);

  @override
  _FilterState createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarTitle(
        title: 'Фильтр',
      ),
      backgroundColor: Color(0xFFE5E5E5),
      body: Column(
        children: <Widget>[
          Text(
            'Время работы',
            style: txtStyle.copyWith(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
