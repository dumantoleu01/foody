import 'package:flutter/material.dart';
import 'package:foody/src/common/widgets/appbar/appbar.dart';
import 'package:foody/src/common/widgets/buttons/sign_in_button.dart';

class Confirmation extends StatefulWidget {
  Confirmation({Key key}) : super(key: key);

  @override
  _ConfirmationState createState() => _ConfirmationState();
}

class _ConfirmationState extends State<Confirmation> {
  String code = '';
  FocusNode pin1FocusNode;
  FocusNode pin2FocusNode;
  FocusNode pin3FocusNode;
  FocusNode pin4FocusNode;

  @override
  void initState() {
    super.initState();
    pin1FocusNode = FocusNode();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
  }

  @override
  void dispose() {
    pin1FocusNode.dispose();
    pin2FocusNode.dispose();
    pin3FocusNode.dispose();
    pin4FocusNode.dispose();
    super.dispose();
  }

  void nextField({String value, FocusNode focusNode}) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

  void saveCode(value) {
    code += value.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBarTitle(title: 'Подтверждение'),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 89,
            ),
            Text(
              'Введите код из письма\n на почте',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Manrope',
                color: Color(0xFF000000),
                fontWeight: FontWeight.w600,
                fontSize: 24,
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Text(
              'На почту speedsk85@gmail.com\nбыл отправлен код подтверждения.\nСкопируйте его и вставьте сюда.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Manrope',
                color: Color(0xFF000000),
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 43,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36.0),
              child: Form(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SizedBox(
                      width: 64,
                      height: 64,
                      child: TextFormField(
                        focusNode: pin1FocusNode,
                        style: TextStyle(fontSize: 24),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 16),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                            borderSide: BorderSide(color: Color(0xFFFEFEFE)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                            borderSide: BorderSide(color: Color(0xFFFEFEFE)),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                            borderSide: BorderSide(color: Color(0xFFFEFEFE)),
                          ),
                        ),
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        onChanged: (value) {
                          nextField(value: value, focusNode: pin2FocusNode);
                          saveCode(value);
                        },
                      ),
                    ),
                    SizedBox(
                      width: 64,
                      height: 64,
                      child: TextFormField(
                        focusNode: pin2FocusNode,
                        style: TextStyle(fontSize: 24),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 16),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                            borderSide: BorderSide(color: Color(0xFFFEFEFE)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                            borderSide: BorderSide(color: Color(0xFFFEFEFE)),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                            borderSide: BorderSide(color: Color(0xFFFEFEFE)),
                          ),
                        ),
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        onChanged: (value) {
                          nextField(value: value, focusNode: pin3FocusNode);
                          saveCode(value);
                        },
                      ),
                    ),
                    SizedBox(
                      width: 64,
                      height: 64,
                      child: TextFormField(
                        focusNode: pin3FocusNode,
                        style: TextStyle(fontSize: 24),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 16),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                            borderSide: BorderSide(color: Color(0xFFFEFEFE)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                            borderSide: BorderSide(color: Color(0xFFFEFEFE)),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                            borderSide: BorderSide(color: Color(0xFFFEFEFE)),
                          ),
                        ),
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        onChanged: (value) {
                          nextField(value: value, focusNode: pin4FocusNode);
                          saveCode(value);
                        },
                      ),
                    ),
                    SizedBox(
                      width: 64,
                      height: 64,
                      child: TextFormField(
                        focusNode: pin4FocusNode,
                        style: TextStyle(fontSize: 24),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 16),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                            borderSide: BorderSide(color: Color(0xFFFEFEFE)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                            borderSide: BorderSide(color: Color(0xFFFEFEFE)),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                            borderSide: BorderSide(color: Color(0xFFFEFEFE)),
                          ),
                        ),
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        onChanged: (value) {
                          pin4FocusNode.unfocus();
                          saveCode(value);
                          // print(code);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Text(
              'Для быстрого доступа к почте',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Manrope',
                color: Color(0xFF000000),
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
            ),
            Container(
              width: 208,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Image.asset('assets/images/google.png'),
                    onPressed: null,
                    iconSize: 48,
                  ),
                  IconButton(
                    icon: Image.asset('assets/images/mail.png'),
                    onPressed: null,
                    iconSize: 48,
                  ),
                  IconButton(
                    icon: Image.asset('assets/images/yandex.png'),
                    onPressed: null,
                    iconSize: 48,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 48,
            ),
            SignInButton(
              text: 'Отправить код ещё раз',
            )
          ],
        ),
      ),
    );
  }
}
