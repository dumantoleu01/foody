import 'package:flutter/material.dart';
import 'package:foody/src/common/widgets/appbar/appbar.dart';

class SignInValidation extends StatefulWidget {
  SignInValidation({Key key}) : super(key: key);

  @override
  _SignInValidationState createState() => _SignInValidationState();
}

class _SignInValidationState extends State<SignInValidation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarTitle(title: 'Подтверждение'),
    );
  }
}
