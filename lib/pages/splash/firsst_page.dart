import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FirstPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("퍼스널 기반 취향 셀렉트샵",style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600,),),
              SizedBox(height: 10),
              SvgPicture.asset("assets/mype.svg"),
            ],
          ),
        ),
      ),
    );
  }
}
