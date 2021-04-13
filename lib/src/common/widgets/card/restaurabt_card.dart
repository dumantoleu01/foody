import 'package:flutter/material.dart';
import 'package:foody/src/common/constants/constant.dart';
import 'package:foody/src/common/icons/foody_icons.dart';

class RestaurantCard extends StatefulWidget {
  final String img;
  final String discount;
  final bool isNew;
  final String nameRestaurant;
  final String typeRestaurant;
  final String location;
  final bool isLiked;

  RestaurantCard(
      {Key key,
      this.img,
      this.discount,
      this.isNew,
      this.nameRestaurant,
      this.typeRestaurant,
      this.location,
      this.isLiked})
      : super(key: key);

  @override
  _RestaurantCardState createState() => _RestaurantCardState();
}

class _RestaurantCardState extends State<RestaurantCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: Colors.white,
      ),
      margin: EdgeInsets.only(bottom: 16),
      child: Column(
        children: <Widget>[
          Container(
            height: 150,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                image: DecorationImage(
                    image: AssetImage(widget.img), fit: BoxFit.cover)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xFFEC3A4D),
                        borderRadius: BorderRadius.circular(6)),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8, 4, 18, 4),
                      child: Text(
                        widget.discount,
                        style: txtStyle.copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  widget.isNew
                      ? Container(
                          decoration: BoxDecoration(
                              color: Color(0xFF1DBE59),
                              borderRadius: BorderRadius.circular(6)),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(8, 4, 11, 4),
                            child: Text(
                              "Новый",
                              style: txtStyle.copyWith(
                                fontWeight: FontWeight.w500,
                                fontSize: 13,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      : Offstage()
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 11, 24, 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      widget.nameRestaurant,
                      style: txtStyle.copyWith(
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF000000),
                      ),
                    ),
                    Text(
                      widget.typeRestaurant,
                      style: txtStyle.copyWith(
                        fontSize: 13,
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          FoodyFont.location_marker,
                          size: 8,
                          color: Color(0xFFC3C3C3),
                        ),
                        Text(
                          widget.location,
                          style: txtStyle.copyWith(
                            fontSize: 13,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Icon(
                  widget.isLiked
                      ? FoodyFont.favorite_filled
                      : FoodyFont.favorite,
                  color: Color(0xFFEC3A4D),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
