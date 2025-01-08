import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxproject/screen_two.dart';

class ScreenOne extends StatefulWidget {
  ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Screen "+Get.arguments[0]),
        backgroundColor: Colors.orange,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
                onPressed: (){
                  // Navigator.pop(context);
                  Get.to(ScreenTwo());
                },
                child: Text('Go To Screen Two')),
          )
        ],
      ),
    );
  }
}
