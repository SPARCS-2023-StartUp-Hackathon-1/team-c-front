import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skeletal_diagnosis/info.dart';
import 'package:skeletal_diagnosis/pages/onboarding/camera_guide_page.dart';

class CustomEnableButton extends StatefulWidget {
  const CustomEnableButton({Key? key}) : super(key: key);

  @override
  State<CustomEnableButton> createState() => _CustomEnableButtonState();
}

class _CustomEnableButtonState extends State<CustomEnableButton> {
  bool isEnabled = true;

  onPressedFunction() {
    Get.to(CameraGuidePage());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 124,
      height: 52,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: kpurple3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            )),
        child: Text("다음",style: TextStyle(fontSize:18,fontWeight: FontWeight.w600),),
        onPressed: isEnabled ? () => onPressedFunction() : null,


      ),
    );
  }
}
