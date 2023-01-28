import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../info.dart';

class SearchOuter extends StatefulWidget {
  const SearchOuter({Key? key}) : super(key: key);

  @override
  State<SearchOuter> createState() => _SearchOuterState();
}

class _SearchOuterState extends State<SearchOuter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backcolor,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20),
            Text(
              "어떤 아우터를 찾으시나요?",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: kblack,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "현재 가능한 카테고리는 ",
                  style: TextStyle(
                      fontSize: 14, fontWeight: FontWeight.w700, color: kgrey3),
                ),
                Text(
                  "자켓",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: kpurple3,
                  ),
                ),
                Text(
                  "입니다.",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: kgrey3,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    OutlinedButton(
                        onPressed: () {},
                        child: SvgPicture.asset("assets/jacket.svg")),
                    Text(
                      "자켓",
                      style: TextStyle(
                        color: kgrey3,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    OutlinedButton(
                        onPressed: () {},
                        child: SvgPicture.asset("assets/Cardigan.svg")),
                    Text(
                      "가디건",
                      style: TextStyle(
                        color: kgrey3,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    OutlinedButton(
                        onPressed: () {},
                        child: SvgPicture.asset("assets/hoodzipup.svg")),
                    Text(
                      "자켓",
                      style: TextStyle(
                        color: kgrey3,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    OutlinedButton(
                        onPressed: () {},
                        child: SvgPicture.asset("assets/Mustang.svg")),
                    Text(
                      "무스탕",
                      style: TextStyle(
                        color: kgrey3,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    OutlinedButton(
                        onPressed: () {},
                        child: SvgPicture.asset("assets/Coat.svg")),
                    Text(
                      "코트",
                      style: TextStyle(
                        color: kgrey3,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    OutlinedButton(
                        onPressed: () {},
                        child: SvgPicture.asset("assets/Padding.svg")),
                    Text(
                      "패딩",
                      style: TextStyle(
                        color: kgrey3,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              width: 124,
              height: 52,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: kpurple3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    )),
                child: Text(
                  "다음",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
