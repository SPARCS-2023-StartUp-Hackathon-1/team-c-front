import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../pages/onboarding/show_camera_page.dart';

class OpenCamera extends StatefulWidget {
  const OpenCamera({Key? key}) : super(key: key);

  @override
  _OpenCameraState createState() => _OpenCameraState();
}

class _OpenCameraState extends State<OpenCamera> {
  File? _image;
  final picker = ImagePicker();

  // 비동기 처리를 통해 카메라와 갤러리에서 이미지를 가져온다.
  Future getImage(ImageSource imageSource) async {
    final image = await picker.pickImage(source: imageSource);
    setState(() {
      _image = File(image!.path);
    });
  }

  // 이미지를 보여주는 위젯
  Widget showImage() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xffd0cece),
          borderRadius: BorderRadius.circular(20)
        ),

          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width,
          child: Center(
              child: Null == Get.arguments
                  ? Text('No image selected.')
                  : Image.file(File(Get.arguments.path)))),
    );
  }

  @override
  Widget build(BuildContext context) {
    // 화면 세로 고정
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 25.0),
            showImage(),
          ],
        );
  }
}