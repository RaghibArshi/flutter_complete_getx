import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:getxproject/home_screen.dart';
import 'package:getxproject/screen_one.dart';
import 'package:getxproject/screen_two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
      getPages: [
        GetPage(name: '/', page: () => HomeScreen()),
        GetPage(name: '/screenOne', page: () => ScreenOne()),
        GetPage(name: '/screenTwo', page: () => ScreenTwo()),
      ],
    );
  }
}
