import 'package:flutter/material.dart';
import 'package:foody/src/common/constants/constant.dart';
import 'package:foody/src/common/icons/foody_icons.dart';
import 'package:foody/src/screens/home/couponsCard/coupons_card.dart';

class Restaurant extends StatefulWidget {
  Restaurant({Key key}) : super(key: key);

  @override
  _RestauantState createState() => _RestauantState();
}

bool descTextShowFlag = false;

List<Icon> menuIcon = [
  Icon(FoodyFont.menu),
  Icon(Icons.call),
  Icon(
    FoodyFont.favorite_filled,
    color: Colors.red,
  )
];
List<CouponsCard> coupons = [
  CouponsCard(
    discount: '20% на все напитки',
    discoundNum: 'Осталось 20 купонов',
    time: '17:00 – 20:00',
  ),
  CouponsCard(
    discount: '50% на все напитки',
    discoundNum: 'Осталось 5 купонов',
    time: '10:00 – 20:00',
  ),
  CouponsCard(
    discount: '25% на все напитки',
    discoundNum: 'Осталось 30 купонов',
    time: '9:00 – 20:00',
  ),
];
List<String> menuName = ['Меню', 'Позвонить', 'Добавить'];

class _RestauantState extends State<Restaurant> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            iconTheme: IconThemeData(color: Colors.black),
            backgroundColor: Colors.white,
            title: Text(
              'Хачапури Хинкальевич',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            pinned: true,
            expandedHeight: 150,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/cafe.png"),
                        fit: BoxFit.cover)),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate(
            <Widget>[
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: ListView(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: <Widget>[
                      Text('Хачапури Хинкальевич',
                          style: txtStyle.copyWith(
                            fontWeight: FontWeight.w800,
                            fontSize: 20,
                            color: Color(0xFF000000),
                          )),
                      Text(
                          'Европейская кухня, китайская кухня, кавказская кухня',
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
                                        width: 1, color: Colors.grey[350])),
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
                      SizedBox(
                        height: 28,
                      ),
                      Text(
                        'Описание',
                        style: txtStyle.copyWith(fontSize: 13),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                              'Новый способ обжарки хачапури только у нас. И вкуснейшие салатики малибу и цезарь, а ещё свежие булочки с джемом и перчик красный, и кружевник. Новый способ обжарки хачапури только у нас. И вкуснейшие салатики малибу и цезарь, а ещё свежие булочки с джемом и перчик красный, и кружевник.',
                              maxLines: descTextShowFlag ? 8 : 2,
                              textAlign: TextAlign.start,
                              style:
                                  txtStyle.copyWith(color: Color(0xFF000000))),
                          SizedBox(
                            height: 5,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                descTextShowFlag = !descTextShowFlag;
                              });
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                descTextShowFlag
                                    ? Text(
                                        "Свернуть",
                                        style: TextStyle(color: Colors.blue),
                                      )
                                    : Text("Подробнее",
                                        style: TextStyle(color: Colors.blue))
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Divider(),
                      SizedBox(
                        height: 19,
                      ),
                      Text(
                        'Минимальная сумма заказа: 2 500 тг',
                        style: txtStyle.copyWith(color: Color(0xFF000000)),
                      ),
                      SizedBox(
                        height: 19,
                      ),
                      Divider(),
                      SizedBox(
                        height: 21,
                      ),
                      Row(children: <Widget>[
                        Icon(
                          FoodyFont.clock,
                          size: 16,
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Text(
                          'Работаем с 08:00 – 21:00',
                          style: txtStyle.copyWith(color: Color(0xFF000000)),
                        ),
                      ]),
                      SizedBox(
                        height: 14,
                      ),
                      Row(children: <Widget>[
                        Icon(
                          FoodyFont.location_marker,
                          size: 16,
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Text(
                          'Абая 60',
                          style: txtStyle.copyWith(color: Color(0xFF000000)),
                        ),
                      ]),
                      SizedBox(
                        height: 19,
                      ),
                      Divider(),
                      SizedBox(
                        height: 19,
                      ),
                      Text(
                        'Скидки и купоны',
                        style: txtStyle.copyWith(
                            fontWeight: FontWeight.w600, color: Colors.black),
                      ),
                      SizedBox(
                        height: 11,
                      ),
                      ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: coupons.length,
                          itemBuilder: (context, index) {
                            return coupons[index];
                          })
                    ],
                  ),
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
