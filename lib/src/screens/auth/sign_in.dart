import 'package:flutter/material.dart';
import 'package:foody/src/common/constants/constant.dart';
import 'package:foody/src/common/widgets/appbar/appbar.dart';
import 'package:foody/src/common/widgets/buttons/submit_button.dart';

class SignIn extends StatefulWidget {
  SignIn({Key key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  final _email = TextEditingController();
  final _password = TextEditingController();
  bool filled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarTitle(
        title: 'Авторизация',
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Center(
            child: ListView(
              shrinkWrap: true,
              children: <Widget>[
                SizedBox(
                  height: 43,
                ),
                Text('Войти через:',
                    textAlign: TextAlign.center,
                    style: txtStyle.copyWith(color: Colors.black)),
                SizedBox(
                  height: 19,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                      icon: Image.asset('assets/images/vk.png'),
                      onPressed: null,
                      iconSize: 64,
                    ),
                    IconButton(
                      icon: Image.asset('assets/images/google.png'),
                      onPressed: null,
                      iconSize: 64,
                    ),
                  ],
                ),
                SizedBox(
                  height: 27,
                ),
                Center(
                  child: Text(
                    'Или',
                    style: txtStyle,
                  ),
                ),
                SizedBox(
                  height: 27,
                ),
                Container(
                  color: Color(0xFFFEFEFE),
                  child: Column(
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
                              hintText: 'Логин или почта',
                              hintStyle: txtStyle),
                          controller: _email,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(vertical: 19),
                            hintText: 'Пароль',
                            hintStyle: txtStyle,
                          ),
                          controller: _password,
                        ),
                      ),
                    ],
                  ),
                ),

                // Text(_email.text),
                (_email.text == '' || _password.text == '')
                    ? Padding(
                        padding: const EdgeInsets.only(left: 16, top: 11),
                        child: Text(
                          'Заполните все поля',
                          style: txtStyle.copyWith(color: Color(0xFFEC3A4D)),
                        ),
                      )
                    : Offstage(),
                SizedBox(
                  height: 32,
                ),
                SubmitButton(
                    text: 'Войти',
                    check: () {
                      setState(() {
                        _email.text;
                      });
                    }),
                SizedBox(
                  height: 19,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/authorization');
                  },
                  child: Row(
                    children: [
                      Text(
                        'Нет аккаунта?',
                        style: TextStyle(
                          color: Color(0xFFC3C3C3),
                        ),
                      ),
                      Text(
                        'Регистрация',
                        style: TextStyle(
                          color: Color(0xFF4631D2),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
