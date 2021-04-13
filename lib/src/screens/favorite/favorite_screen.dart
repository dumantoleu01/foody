import 'package:flutter/material.dart';
import 'package:foody/src/common/widgets/appbar/appbar.dart';
import 'package:foody/src/common/widgets/card/restaurabt_card.dart';

class Favorite extends StatefulWidget {
  Favorite({Key key}) : super(key: key);

  @override
  _FavoriteScreenState createState() => _FavoriteScreenState();
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

class _FavoriteScreenState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      appBar: AppBarTitle(
        title: 'Избранные',
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: ListView(
          children: <Widget>[
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
                }),
          ],
        ),
      ),
    );
  }
}
