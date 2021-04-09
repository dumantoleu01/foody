import 'package:flutter/material.dart';

class SubmitButton extends StatelessWidget {
  final String text;
  final Function check;
  final Function navigator;
  const SubmitButton({Key key, this.text, this.check, this.navigator})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        border: Border(),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          primary: Color(0xFF4631D2),
        ),
        onPressed: () {
          navigator();
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                text + " ",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              (text == 'Отправить код ещё раз')
                  ? TweenAnimationBuilder(
                      tween: Tween(begin: 30.0, end: 0),
                      duration: Duration(seconds: 30),
                      builder: (context, value, child) =>
                          Text("0:${value.toInt()}"),
                    )
                  : Offstage(),
            ],
          ),
        ),
      ),
    );
  }
}
