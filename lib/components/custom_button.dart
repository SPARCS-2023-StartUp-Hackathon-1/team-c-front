

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../info.dart';
import '../pages/onboarding/show_camera_page.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({Key? key}) : super(key: key);

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  File? _image;
  final picker = ImagePicker();

  // 비동기 처리를 통해 카메라와 갤러리에서 이미지를 가져온다.
  Future getImage(ImageSource imageSource) async {
    print("aa");
    final image = await picker.pickImage(source: imageSource);
    print("bb");
    Get.to(ShowCameraPage(),arguments:File(image!.path));
  }



  @override
  Widget build(BuildContext context) {
    // 화면 세로 고정
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    return Container(
              width: 124,
              height: 52,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: kpurple3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    )),
                child: Text(
                  "준비 완료!",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                ),
                onPressed: () {
                  print("1");
                  getImage(ImageSource.camera);
                },
              ),
            );
  }
}



