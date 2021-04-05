import 'package:flutter/material.dart';
import 'package:foody/src/screens/auth/widgets/sign_in_button.dart';

class SignIn extends StatefulWidget {
  SignIn({Key key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFEFEFE),
        title: Center(
          child: Text(
            'Sign In',
            style: TextStyle(
              fontFamily: 'Manrope',
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 15,
            ),
          ),
        ),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 43,
            ),
            Text(
              'Войти через:',
              style: TextStyle(
                fontFamily: 'Manrope',
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
            ),
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
                style: TextStyle(
                  fontFamily: 'Manrope',
                  color: Color(0xFFC3C3C3),
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 27,
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Логин или почта',
                hintStyle: TextStyle(
                  fontFamily: 'Manrope',
                  color: Color(0xFFC3C3C3),
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Пароль',
                hintStyle: TextStyle(
                  fontFamily: 'Manrope',
                  color: Color(0xFFC3C3C3),
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 32,
            ),
            SignInButton(
              text: 'Войти',
            )
          ],
        ),
      ),
    );
  }
}
