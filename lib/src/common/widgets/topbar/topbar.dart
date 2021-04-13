import 'package:flutter/material.dart';
import 'package:foody/src/common/constants/constant.dart';

class TopBar extends StatefulWidget {
  final List<String> topBar;
  TopBar({Key key, this.topBar}) : super(key: key);

  @override
  _TopBarState createState() => _TopBarState();
}

int selected = 0;
Color selectedColor = Colors.black;

class _TopBarState extends State<TopBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16, bottom: 16),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: SizedBox(
        width: double.infinity,
        height: 50,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: widget.topBar.length,
          itemBuilder: (context, index) {
            return Container(
              width: (MediaQuery.of(context).size.width - 32) /
                  widget.topBar.length,
              alignment: Alignment.center,
              child: Column(
                children: <Widget>[
                  TextButton(
                      onPressed: () {
                        setState(() {
                          selected = index;
                        });
                      },
                      child: Text(
                        widget.topBar[index],
                        style: txtStyle.copyWith(
                          fontSize: 13,
                          color: index == selected
                              ? selectedColor
                              : Color(0xFFC3C3C3),
                        ),
                      )),
                  selected == index
                      ? Container(
                          decoration: BoxDecoration(color: Colors.black),
                          height: 2,
                          width: 32,
                        )
                      : Offstage(),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
