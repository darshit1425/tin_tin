import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeContoller extends GetxController {

  List music = [
    "music/assets_note1.wav",
    "music/assets_note2.wav",
    "music/assets_note3.wav",
    "music/assets_note4.wav",
    "music/assets_note5.wav",
    "music/assets_note6.wav",
    "music/assets_note7.wav",
  ];
  List color = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.indigo,
    Colors.purple,
  ];

  List<String> ColorName = ["Red", "Orange", "Yellow", "Green", "Blue", "indigo", "Purple"];
}
