import 'package:flutter/material.dart';
import 'package:foody/src/common/constants/constant.dart';
import 'package:foody/src/common/icons/foody_icons.dart';

class Restaurant extends StatefulWidget {
  Restaurant({Key key}) : super(key: key);

  @override
  _RestauantState createState() => _RestauantState();
}

List<Icon> menuIcon = [
  Icon(FoodyFont.menu),
  Icon(FoodyFont.menu),
  Icon(FoodyFont.menu)
];
List<String> menuName = ['Меню', 'Позвонить', 'Добавить'];

class _RestauantState extends State<Restaurant> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            height: 150,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/cafe.png"),
                    fit: BoxFit.cover)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: 36,
                    height: 36,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.3),
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                        icon: Icon(
                          FoodyFont.arrow_left,
                          color: Colors.white,
                          size: 13,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView(
              shrinkWrap: true,
              children: <Widget>[
                Text('Хачапури Хинкальевич',
                    style: txtStyle.copyWith(
                      fontWeight: FontWeight.w800,
                      fontSize: 20,
                      color: Color(0xFF000000),
                    )),
                Text('Европейская кухня, китайская кухня, кавказская кухня',
                    style: txtStyle.copyWith(
                      fontSize: 13,
                      color: Color(0xFF000000),
                    )),
                SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 68,
                  child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: menuIcon.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(right: 13),
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              border: Border.all(
                                  width: 1, color: Color(0xFFE0E6ED))),
                          child: Column(
                            children: <Widget>[
                              IconButton(
                                icon: menuIcon[index],
                                onPressed: () {},
                              ),
                              Text(
                                menuName[index],
                                style: txtStyle.copyWith(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 13,
                                    color: Color(0xFF000000)),
                              ),
                            ],
                          ),
                        );
                      }),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
