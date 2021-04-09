import 'package:flutter/material.dart';
import 'package:foody/src/common/constants/constant.dart';
import 'package:foody/src/common/widgets/appbar/appbar.dart';
import 'package:foody/src/common/widgets/buttons/submit_button.dart';

class Authorization extends StatefulWidget {
  Authorization({Key key}) : super(key: key);

  @override
  _AuthorizationState createState() => _AuthorizationState();
}

class _AuthorizationState extends State<Authorization> {
  final _login = TextEditingController();
  final _phone = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBarTitle(
          title: 'Регистрация',
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    color: Color(0xFFFEFEFE),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: TextFormField(
                            decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFFE0E6ED)),
                              ),
                              contentPadding:
                                  EdgeInsets.symmetric(vertical: 19),
                              hintText: 'Логин',
                              hintStyle: txtStyle,
                            ),
                            controller: _login,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: TextFormField(
                            decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFFE0E6ED)),
                              ),
                              contentPadding:
                                  EdgeInsets.symmetric(vertical: 19),
                              hintText: 'Телефон',
                              hintStyle: txtStyle,
                            ),
                            controller: _phone,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: TextFormField(
                            decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFFE0E6ED)),
                              ),
                              contentPadding:
                                  EdgeInsets.symmetric(vertical: 19),
                              hintText: 'Почта',
                              hintStyle: txtStyle,
                            ),
                            controller: _email,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Container(
                            child: TextFormField(
                              obscureText: !_passwordVisible,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 19),
                                hintText: 'Пароль',
                                hintStyle: txtStyle,
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    _passwordVisible
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: Theme.of(context).primaryColorDark,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _passwordVisible = !_passwordVisible;
                                    });
                                  },
                                ),
                              ),
                              controller: _password,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 11,
                  ),
                  ((_login.text == '' || _phone.text == '') ||
                          (_email.text == '' || _password.text == ''))
                      ? Padding(
                          padding: const EdgeInsets.only(left: 16, top: 11),
                          child: Text(
                            'Заполните все поля',
                            style: txtStyle.copyWith(color: Color(0xFFEC3A4D)),
                          ),
                        )
                      : Offstage(),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: SubmitButton(
                  text: "Создать аккаунт",
                  check: () {
                    setState(() {
                      _email.text;
                    });
                  },
                  navigator: () {
                    Navigator.pushNamed(
                      context,
                      '/confirmation',
                    );
                  },
                ),
              )
            ],
          ),
        ));
  }
}
