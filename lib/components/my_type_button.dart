import 'package:flutter/material.dart';
import 'package:skeletal_diagnosis/info.dart';

class MyTypeButton extends StatelessWidget {
  final String button_name;

  const MyTypeButton({required this.button_name});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFF1C1C1C),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
          side: BorderSide(
            color: kneonpurple,
            width: 1,
          ),
        ),
      ),
      onPressed: () {},
      child: Text(
        "$button_name",
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: kneonpurple,
        ),
      ),
    );
  }
}
