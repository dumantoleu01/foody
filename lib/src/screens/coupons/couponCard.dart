import 'package:flutter/material.dart';
import 'package:foody/src/common/constants/constant.dart';
import 'package:foody/src/common/icons/foody_icons.dart';

class CouponCard extends StatefulWidget {
  final String restaurantName;
  final String discount;
  final String time;
  CouponCard({Key key, this.restaurantName, this.discount, this.time})
      : super(key: key);

  @override
  _CouponCardState createState() => _CouponCardState();
}

class _CouponCardState extends State<CouponCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          border: Border.all(width: 1, color: Colors.grey[350])),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 12, 24, 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  widget.restaurantName,
                  style:
                      txtStyle.copyWith(color: Color(0xFF000000), fontSize: 13),
                ),
                SizedBox(
                  height: 7,
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      FoodyFont.ticket,
                      size: 16,
                      color: Color(0xFFEC3A4D),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      widget.discount,
                      style: txtStyle.copyWith(
                          color: Color(0xFF000000),
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  widget.time,
                  style: txtStyle.copyWith(fontSize: 13),
                ),
              ],
            ),
            IconButton(
              icon: Icon(
                FoodyFont.arrow_right,
                size: 10,
                color: Color(0xFFC3C3C3),
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
