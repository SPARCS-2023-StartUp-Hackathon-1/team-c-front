import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:skeletal_diagnosis/info.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar: AppBar(
        elevation : 0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFFF5F5F5),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("MY",style: TextStyle(color: kpurple3, fontSize: 16, fontWeight: FontWeight.w800),),
            Text("  SW",style: TextStyle(decoration: TextDecoration.underline,fontSize: 16, fontWeight: FontWeight.w800,color: Color(0xFF2E3234)),),
            Text("IPE",style: TextStyle(color: kpurple3, fontSize: 16, fontWeight: FontWeight.w800),),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            SizedBox(height: 56),
            Text("AI가 체형 맞춤 옷을 수집했어요",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: kgrey3,
              ),),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text("간단한 ",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  color: kblack,
                ),),
              Text("SWI",
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontSize: 22,
                  fontWeight: FontWeight.w800,
                  color: kblack,
                ),),
              Text("PE",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w800,
                  color: kpurple3,
                ),),
              Text("로",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: kblack,
                ),),
            ],),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text("나만의 취향",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: kpurple3,
                ),),
              Text("을 찾아보세요!",
                style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: kblack,
              ),),

            ],
            ),
            SizedBox(height: 30),
            SvgPicture.asset("assets/homepagecard.svg"),
            SizedBox(height: 50),
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(60),
                  child: Container(
                    width: 90,
                    height: 90,
                    child: Icon(Icons.pages),
                    decoration: BoxDecoration(
                      color : kpurple3,
                      border: Border.all(color: kblack,style: BorderStyle.solid),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 70,
                  decoration: BoxDecoration(
                    color: kblack,
                    borderRadius: BorderRadius.circular(60),
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
