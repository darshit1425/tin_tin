import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tin_tin/screen/homescreen/contoller/home_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeContoller contoller = Get.put(HomeContoller());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: ListView.builder(
          itemCount: contoller.ColorName.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () async {
                final player = AudioPlayer();

                await player.play(AssetSource("${contoller.music[index]}"));
                // await player.play(AssetSource('music/assets_note1.wav'));

                setState(() {});
              },
              child: Container(
                height: 100,
                color: contoller.color[index],
                child: Center(
                  child: Text(
                    "${contoller.ColorName[index]}",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
