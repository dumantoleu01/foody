import 'package:flutter/material.dart';
import 'package:foody/src/screens/auth/authorization.dart';
import 'package:foody/src/screens/auth/confirmation.dart';
import 'package:foody/src/screens/auth/sign_in.dart';
import 'package:foody/src/screens/auth/sign_in_validation.dart';
import 'package:foody/src/screens/home/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Foody',
      initialRoute: '/sign_in',
      routes: {
        '/home': (context) => Home(),
        '/sign_in': (context) => SignIn(),
        '/sign_inValidation': (context) => SignInValidation(),
        '/authorization': (context) => Authorization(),
        '/confirmation': (context) => Confirmation(),
      },
    );
  }
}
