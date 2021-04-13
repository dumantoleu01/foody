import 'package:flutter/material.dart';
import 'package:foody/src/common/constants/constant.dart';
import 'package:foody/src/common/icons/foody_icons.dart';

class CouponsCard extends StatefulWidget {
  final String discount;
  final String discoundNum;
  final String time;
  CouponsCard({Key key, this.discount, this.discoundNum, this.time})
      : super(key: key);

  @override
  _CouponsCardState createState() => _CouponsCardState();
}

class _CouponsCardState extends State<CouponsCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: Color(0xFFFEFEFE), borderRadius: BorderRadius.circular(6)),
      child: Column(
        children: <Widget>[
          Row(children: <Widget>[
            Icon(FoodyFont.location_marker),
            SizedBox(
              width: 10,
            ),
            Text(
              '20% на все напитки',
            ),
          ]),
          Row(
            children: <Widget>[
              Text(
                'Осталось 20 купонов',
                style: txtStyle.copyWith(fontSize: 13),
              ),
              SizedBox(
                width: 24,
              ),
              Text(
                '17:00 – 20:00',
                style: txtStyle.copyWith(fontSize: 13),
              ),
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            alignment: Alignment.topLeft,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                elevation: 0,
                primary: Color(0xFF4631D2),
              ),
              child: Text(
                'Использовать',
                style: txtStyle.copyWith(
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
