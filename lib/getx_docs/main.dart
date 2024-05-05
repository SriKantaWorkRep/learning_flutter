import 'package:dealdox_integrated/getx_docs/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


void main()=>MyApp();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        home:const HomePage(),
    );
  }
}

