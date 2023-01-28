import 'package:flutter/material.dart';
import 'package:skeletal_diagnosis/info.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyTypeTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              width: 30,
              height: 2,
              decoration: BoxDecoration(
                color: kneonpurple,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            SizedBox(width: 5),
            Container(
              width: 2,
              height: 2,
              decoration: BoxDecoration(
                color: kneonpurple,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ],
        ),
        Text("Straight",style: TextStyle(color: kneonpurple, fontWeight: FontWeight.w600,fontSize: 24),),
        Text("Type",style: TextStyle(color: kwhite, fontWeight: FontWeight.w600,fontSize: 24),),
        Text("스트레이트 유형",style: TextStyle(color: kgrey2,fontSize: 10,fontWeight: FontWeight.w600),),
      ],
    );
  }
}
