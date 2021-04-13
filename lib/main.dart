import 'package:flutter/material.dart';
import 'package:foody/src/common/widgets/navbar/navbar.dart';
import 'package:foody/src/screens/auth/authorization.dart';
import 'package:foody/src/screens/auth/confirmation.dart';
import 'package:foody/src/screens/auth/filter/filter_screen.dart';
import 'package:foody/src/screens/auth/sign_in.dart';
import 'package:foody/src/screens/auth/sign_in_validation.dart';
import 'package:foody/src/screens/home/home.dart';
import 'package:foody/src/screens/home/restaurant/restaurant.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Foody',
      initialRoute: '/navbar',
      routes: {
        '/navbar': (context) => NavBar(),
        '/home': (context) => Home(),
        '/sign_in': (context) => SignIn(),
        '/sign_inValidation': (context) => SignInValidation(),
        '/authorization': (context) => Authorization(),
        '/confirmation': (context) => Confirmation(),
        '/restaurant': (context) => Restaurant(),
        '/filter': (context) => Filter(),
      },
    );
  }
}
