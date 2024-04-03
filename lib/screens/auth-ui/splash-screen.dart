import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(
        backgroundColor: Colors.pink,
        elevation: 0,
      ),

      body: Container(
        child: Column(
          children: [
            Container(child: Lottie.asset("images/splash-icon.json")
            ),
            Container(
              child: Text("Online Shop" , 
              style:TextStyle(fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Colors.white,
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