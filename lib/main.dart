// main.dart
import 'package:chat_app/home%20screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


import 'controller/home_controller.dart'; // Import controller

void main() {
  Get.put(HomeController()); // 👈 Register HomeController here
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'দোস্ত চ্যাটিং',
      theme: ThemeData(primaryColor: Colors.green),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
