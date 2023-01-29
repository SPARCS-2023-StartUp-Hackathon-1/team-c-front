import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skeletal_diagnosis/info.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:skeletal_diagnosis/pages/main_page/home_page.dart';
import '../components/my_type_button.dart';
import '../components/my_type_title.dart';
import '../components/necklinebox.dart';

class MyTypePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1C1C1C),
      appBar: AppBar(
        backgroundColor: Color(0xFF1C1C1C),
        elevation: 0,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          "체형 분석 결과",
          style: TextStyle(
            fontSize: 20,
            color: kwhite,
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              children: [
                Stack(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        MyTypeTitle(),
                        Column(
                          children: [
                            MyTypeButton(
                              button_name: "넥라인",
                            ),
                            MyTypeButton(
                              button_name: "어깨라인",
                            ),
                            MyTypeButton(
                              button_name: "허리선",
                            ),
                          ],
                        ),
                        SvgPicture.asset("assets/bodyimage.svg"),
                      ],
                    ),

                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyTypeButton(
                      button_name: "실루엣",
                    ),
                    MyTypeButton(
                      button_name: "디자인",
                    ),
                    MyTypeButton(
                      button_name: "소재",
                    ),
                    MyTypeButton(
                      button_name: "핏",
                    ),
                    MyTypeButton(
                      button_name: "무드",
                    ),
                  ],
                ),
                NeckLineBox(),
                Container(
                  width: 200,
                  height: 52,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: kpurple3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        )),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset("assets/logo.svg"),
                        SizedBox(width: 5),
                        Text(
                          "에서 취향 찾기",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 18),
                        ),
                      ],
                    ),
                    onPressed: () {
                      Get.to(HomePage());
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

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
            SizedBox(
              height: 20,
            ),
            Text(
              "Straight Type",
              style: TextStyle(
                  color: kgrey3, fontSize: 10, fontWeight: FontWeight.w600),
            ),
            Text(
              "넥라인",
              style: TextStyle(
                  color: kwhite, fontSize: 15, fontWeight: FontWeight.w700),
            ),
            Text(
              ":목이 짧은 편이예요",
              style: TextStyle(
                color: kwhite,
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              "BEST!!",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w800,
                color: kneonpurple,
              ),
            ),
            Text(
              "○ 목을 짧아 보이게 하는 가로로 긴 오픈숄더, 보트넥 대신, 적당히 목을 드러내는 넥라인",
              style: TextStyle(
                color: kwhite,
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              "○ 추운 겨울에는 터들넥 대신 반복",
              style: TextStyle(
                color: kwhite,
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              "○ 넥라인의 가로 길이만 적당하다면, 라운드넥, 스퀘어넥, 브이넥 등 깊이감은 취향 껏",
              style: TextStyle(
                color: kwhite,
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
