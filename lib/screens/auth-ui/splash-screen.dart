import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_counter_app/screens/auth-ui/welcome-screen.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 8),() {
      Get.offAll(() => WelcomeScreen());
    });

  }


  @override
  Widget build(BuildContext context) {
    //final size= MediaQuery.of(context).size;


    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),

      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Container(
                width: Get.width,
                alignment: Alignment.center,
                child: Lottie.asset("images/splashicon.json")
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 70.0),
              width: Get.width,
              alignment: Alignment.center,
              child: Text("Online Shop" , 
              style:TextStyle(fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Colors.pink,
                fontFamily: 'Poppins'
              ),
            ),
            )
          ],
        ),
      ),
    );
  }
}