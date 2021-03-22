import 'package:flutter/material.dart';
import 'package:tflite_demo/auth/homeScreen.dart';
import 'package:tflite_demo/models/objectDetection.dart';

const String ssd = "SSD MobileNet";
const String yolo = "Tiny YOLOv2";

void main(){
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homeScreen(),
    );
  }
}
