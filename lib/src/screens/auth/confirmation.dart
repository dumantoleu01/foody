import 'package:flutter/material.dart';
import 'package:foody/src/common/constants/constant.dart';
import 'package:foody/src/common/widgets/appbar/appbar.dart';
import 'package:foody/src/common/widgets/buttons/submit_button.dart';

class Confirmation extends StatefulWidget {
  Confirmation({Key key}) : super(key: key);

  @override
  _ConfirmationState createState() => _ConfirmationState();
}

class _ConfirmationState extends State<Confirmation> {
  String code = '';
  FocusNode pin1FocusNode = FocusNode();
  FocusNode pin2FocusNode = FocusNode();
  FocusNode pin3FocusNode = FocusNode();
  FocusNode pin4FocusNode = FocusNode();
  List<FocusNode> _focusNodes = [];
  List<FocusNode> _focusNodesNext = [];

  @override
  void initState() {
    super.initState();
    _focusNodes
        .addAll({pin1FocusNode, pin2FocusNode, pin3FocusNode, pin4FocusNode});
    _focusNodesNext
        .addAll({pin2FocusNode, pin3FocusNode, pin4FocusNode, pin4FocusNode});
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
                style: txtStyle.copyWith(fontSize: 20)),
            SizedBox(
              height: 43,
            ),
            Center(
              child: SizedBox(
                height: 64,
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: _focusNodes.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: SizedBox(
                        width: 64,
                        height: 64,
                        child: TextFormField(
                          focusNode: _focusNodes[index],
                          style: TextStyle(fontSize: 24),
                          decoration: confirmButtonDec,
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          onChanged: (value) {
                            index == _focusNodesNext.length - 1
                                ? _focusNodesNext[index].unfocus()
                                : nextField(
                                    value: value,
                                    focusNode: _focusNodesNext[index]);
                            saveCode(value);
                          },
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            Text(
              'Для быстрого доступа к почте',
              textAlign: TextAlign.center,
              style: txtStyle.copyWith(color: Color(0xFF000000)),
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
            SubmitButton(
              text: 'Отправить код ещё раз',
            )
          ],
        ),
      ),
    );
  }
}
