import 'package:flutter/material.dart';
import 'package:skeletal_diagnosis/info.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
          "my TYpe",
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
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    MyTypeTitle(),
                    Stack(
                      children: [
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
                NeckLineBox(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
