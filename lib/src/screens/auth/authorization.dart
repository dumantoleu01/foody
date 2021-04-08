import 'package:flutter/material.dart';
import 'package:foody/src/common/widgets/appbar/appbar.dart';
import 'package:foody/src/common/widgets/buttons/sign_in_button.dart';

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
                              hintStyle: TextStyle(
                                fontFamily: 'Manrope',
                                color: Color(0xFFC3C3C3),
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              ),
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
                              hintStyle: TextStyle(
                                fontFamily: 'Manrope',
                                color: Color(0xFFC3C3C3),
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              ),
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
                              hintStyle: TextStyle(
                                fontFamily: 'Manrope',
                                color: Color(0xFFC3C3C3),
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              ),
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
                                hintStyle: TextStyle(
                                  fontFamily: 'Manrope',
                                  color: Color(0xFFC3C3C3),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                ),
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
                            style: TextStyle(
                              fontFamily: 'Manrope',
                              color: Color(0xFFEC3A4D),
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                            ),
                          ),
                        )
                      : Offstage(),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: SignInButton(
                  text: "Создать аккаунт",
                  check: () {
                    setState(() {
                      _email.text;
                    });
                  },
                  path: '/confirmation',
                ),
              )
            ],
          ),
        ));
  }
}
