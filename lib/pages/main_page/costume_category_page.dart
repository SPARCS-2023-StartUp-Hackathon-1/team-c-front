import 'package:flutter/material.dart';
import 'package:skeletal_diagnosis/info.dart';

class CostumeCategoryPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backcolor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(children: [
            Text("카테고리를 선택해주세요",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600,),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text("현재 가능한 카테고리는 ",style: TextStyle(color:kgrey3,fontSize: 14,fontWeight: FontWeight.w700,),),
              Text("하의, 아우터",style: TextStyle(color:kpurple3,fontSize: 14,fontWeight: FontWeight.w700,),),
              Text("입니다",style: TextStyle(color:kgrey3,fontSize: 14,fontWeight: FontWeight.w700,),),
            ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.width * 0.4,
                  child: Column(children: [
                    Text("상의",style: TextStyle(color: kgrey3,fontSize: 18, fontWeight: FontWeight.w600),),
                  ],),
                  decoration: BoxDecoration(
                    color:backcolor,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: kgrey1,width: 3)
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.width * 0.4,
                  child: Column(children: [
                    Text("하의",style: TextStyle(color: kgrey3,fontSize: 18, fontWeight: FontWeight.w600),),
                  ],),
                  decoration: BoxDecoration(
                    color:backcolor,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: kgrey1,width: 3),
                  ),),
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.width * 0.4,
                  child: Column(children: [
                    Text("아우터",style: TextStyle(color: kgrey3,fontSize: 18, fontWeight: FontWeight.w600,),),
                  ],),
                  decoration: BoxDecoration(
                    color: backcolor,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: kgrey1, width: 3),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.width * 0.4,
                  child: Column(children: [
                    Text("원피스",style: TextStyle(color: kgrey3,fontSize: 18, fontWeight: FontWeight.w600),),
                  ],),
                  decoration: BoxDecoration(
                    color:backcolor,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: kgrey1, width: 3),
                  ),),
              ],
            ),
            ElevatedButton(onPressed: (){}, child: Text("A")),
          ],),
        ),
      ),
    );
  }
}
