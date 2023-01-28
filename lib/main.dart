import 'package:flutter/material.dart';
import 'package:skeletal_diagnosis/pages/main_page/costume_category_page.dart';
import 'package:skeletal_diagnosis/pages/main_page/home_page.dart';
import 'package:skeletal_diagnosis/pages/main_page/search_outer.dart';
import 'package:skeletal_diagnosis/body_analysis/my_type_page.dart';
import 'package:skeletal_diagnosis/pages/splash/body_analysis_page.dart';
import 'package:skeletal_diagnosis/pages/splash/firsst_page.dart';
import 'package:skeletal_diagnosis/pages/onboarding/onboarding_name_page.dart';
import 'package:skeletal_diagnosis/theme.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      home:MyTypePage(),
    );
  }
}
