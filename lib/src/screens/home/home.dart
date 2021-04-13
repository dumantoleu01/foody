import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:foody/src/common/constants/constant.dart';
import 'package:foody/src/common/icons/foody_icons.dart';
import 'package:foody/src/common/widgets/card/restaurabt_card.dart';
import 'package:foody/src/common/widgets/topbar/topbar.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

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

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F2F2),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: <Widget>[
          TopBar(
            topBar: ['Рядом', 'Выгодные', 'Новые'],
          ),
          Row(
            children: <Widget>[
              Expanded(
                  child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/filter');
                },
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
                      SizedBox(
                        width: 11,
                      ),
                      Expanded(
                        child: Text('Поиск',
                            style: txtStyle.copyWith(
                              fontSize: 13,
                            )),
                      )
                    ],
                  ),
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
    );
  }
}
