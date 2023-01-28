import 'package:flutter/material.dart';
import 'package:skeletal_diagnosis/info.dart';

class FootForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        hintText: "230mm",

        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: kpurple3),
        ),
      ),
      autofocus: true,
    );
  }
}
