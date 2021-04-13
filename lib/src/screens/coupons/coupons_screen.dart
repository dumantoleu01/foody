import 'package:flutter/material.dart';
import 'package:foody/src/common/widgets/appbar/appbar.dart';
import 'package:foody/src/common/widgets/topbar/topbar.dart';
import 'package:foody/src/screens/coupons/couponCard.dart';

class Coupons extends StatefulWidget {
  Coupons({Key key}) : super(key: key);

  @override
  _CouponsState createState() => _CouponsState();
}

List<CouponCard> coupons = [
  CouponCard(
    restaurantName: 'Хачапури Хинкальевич',
    discount: '50% на все напитки',
    time: 'до 24.04.2020',
  ),
  CouponCard(
    restaurantName: 'Salam Bro',
    discount: '10% на все напитки',
    time: 'до 31.04.2020',
  ),
  CouponCard(
    restaurantName: 'Halal Bite',
    discount: '25% на все напитки',
    time: 'до 02.05.2020',
  ),
  CouponCard(
    restaurantName: 'Хачапури Хинкальевич',
    discount: '50% на все напитки',
    time: 'до 24.04.2020',
  ),
  CouponCard(
    restaurantName: 'Хачапури Хинкальевич',
    discount: '50% на все напитки',
    time: 'до 24.04.2020',
  ),
];

class _CouponsState extends State<Coupons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFE5E5E5),
        appBar: AppBarTitle(
          title: 'Купоны',
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 16),
          children: <Widget>[
            TopBar(
              topBar: ['Купоны', 'Использованные'],
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: coupons.length,
              itemBuilder: (context, index) {
                return coupons[index];
              },
            )
          ],
        ));
  }
}
