import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_common/get_reset.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getxproject/screen_one.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Get X Tutorial"),
        backgroundColor: Colors.orange,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
                onPressed: (){
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=>ScreenOne()));
                  // Get.to(ScreenOne(), arguments: ['Home Data GetX', 'TheCodeme']);
                  Get.toNamed('/screenOne', arguments: ['Route Data Passing']);
                },
                child: Text('Go To Next Screen')),
          )
        ],
      ),
    );
  }
}
