import 'package:flutter/material.dart';

// its not work
class ConfirmDigit extends StatefulWidget {
  final int digit;
  final FocusNode pinFocusNode;
  final Function(String v) nextField;
  const ConfirmDigit({Key key, this.digit, this.pinFocusNode, this.nextField})
      : super(key: key);

  @override
  _ConfirmDigitState createState() => _ConfirmDigitState();
}

class _ConfirmDigitState extends State<ConfirmDigit> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 64,
      height: 64,
      child: TextFormField(
        focusNode: widget.pinFocusNode,
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
        onChanged: widget.nextField,
      ),
    );
  }
}
