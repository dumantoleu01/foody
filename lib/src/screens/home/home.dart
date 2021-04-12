import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:foody/src/common/constants/constant.dart';
import 'package:foody/src/common/icons/foody_icons.dart';
import 'package:foody/src/screens/home/restaurant_card.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

List<String> topBar = ['Рядом', 'Выгодные', 'Новые'];
List<RestaurantCard> restaurant = [
  RestaurantCard(
    img: "assets/images/cafe.png",
    discount: "-35% на напитки",
    isNew: false,
    nameRestaurant: 'Coffe Boom',
    typeRestaurant: 'Кофетерий, Европейская кухня',
    location: "Аль-Фараби 222",
    isLiked: false,
  ),
  RestaurantCard(
    img: "assets/images/cafe.png",
    discount: "-15% на напитки",
    isNew: true,
    nameRestaurant: 'Salam Bro',
    typeRestaurant: 'Кофетерий, Европейская кухня',
    location: "Аль-Фараби 222",
    isLiked: true,
  ),
  RestaurantCard(
    img: "assets/images/cafe.png",
    discount: "-50% на напитки",
    isNew: true,
    nameRestaurant: 'Halal Bite',
    typeRestaurant: 'Кофетерий, Европейская кухня',
    location: "Аль-Фараби 222",
    isLiked: true,
  ),
];
int selected = 0;
Color selectedColor = Colors.black;

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 16, bottom: 16),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: Row(
                  children: <Widget>[
                    ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: topBar.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Column(
                            children: <Widget>[
                              TextButton(
                                  onPressed: () {
                                    setState(() {
                                      selected = index;
                                    });
                                  },
                                  child: Text(
                                    topBar[index],
                                    style: txtStyle.copyWith(
                                      fontSize: 13,
                                      color: index == selected
                                          ? selectedColor
                                          : Color(0xFFC3C3C3),
                                    ),
                                  )),
                              selected == index
                                  ? Container(
                                      decoration:
                                          BoxDecoration(color: Colors.black),
                                      height: 2,
                                      width: 32,
                                    )
                                  : Offstage(),
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                    child: Container(
                  height: 42,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey.withOpacity(0.2),
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                  margin: EdgeInsets.only(right: 16),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 12),
                        child: Icon(
                          FoodyFont.search,
                          color: Color(0xFFC3C3C3),
                          size: 20,
                        ),
                      ),
                      Expanded(
                        child: TextField(
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Поиск",
                              hintStyle: TextStyle(color: Colors.grey),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 12),
                              isDense: true,
                            ),
                            style: txtStyle),
                      )
                    ],
                  ),
                )),
                SizedBox(
                  height: 42,
                  width: 42,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey.withOpacity(0.2),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                    child: Icon(
                      FoodyFont.filter,
                      color: Colors.grey,
                      size: 20,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 24,
            ),
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: restaurant.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/restaurant');
                      },
                      child: restaurant[index]);
                })
          ],
        ),
      ),
    );
  }
}
