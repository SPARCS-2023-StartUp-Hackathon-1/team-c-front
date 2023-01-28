import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../info.dart';

class NeckLineBox extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 312,
      height: 240,
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: kpurple1),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.1),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(height: 20,),
            Text(
              "Straight Type",
              style: TextStyle(
                  color: kgrey3,
                  fontSize: 10,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              "넥라인",
              style: TextStyle(
                  color: kwhite,
                  fontSize: 15,
                  fontWeight: FontWeight.w700),
            ),
            Text(":목이 짧은 편이예요",style: TextStyle(
              color:kwhite,
              fontSize: 15,
              fontWeight:  FontWeight.w400,
            ),),
            Text("BEST!!",textAlign: TextAlign.start,style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w800,
              color: kneonpurple,
            ),
            ),

          ],
        ),
      ),
    );
  }
}
