import 'package:flutter/material.dart';

import '../info.dart';

class CustomForm extends StatelessWidget {
  final String hint;
  const CustomForm({required this.hint});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: TextFormField(
        decoration: InputDecoration(
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: kpurple3),
          ),
          hintText: "$hint",
        ),
      ),
    );
  }
}
