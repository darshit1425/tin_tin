import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tin_tin/screen/homescreen/view/home_screen.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      getPages: [
        GetPage(
          name: '/',
          page: () => HomeScreen(),
        ),
      ],
    ),
  );
}
