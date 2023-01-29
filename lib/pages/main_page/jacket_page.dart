import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skeletal_diagnosis/info.dart';

class JacketPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backcolor,
        title: SvgPicture.asset("assets/mypelogo.svg"),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(

                    border: Border.all(color: kblack,style: BorderStyle.solid,width: 3),
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
