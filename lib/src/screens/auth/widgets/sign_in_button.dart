import 'package:flutter/material.dart';

class SignInButton extends StatelessWidget {
  final String text;
  const SignInButton({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: EdgeInsets.symmetric(horizontal: 50),
      padding: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        border: Border(),
      ),
      child: RaisedButton(
        color: Color(0xFF4631D2),
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
