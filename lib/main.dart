import 'package:flutter/material.dart';
import 'package:flutter_counter_app/pages/HomePage.dart';
import 'package:flutter_counter_app/screens/auth-ui/splash-screen.dart';
import 'package:get/get.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      
      home: const MainScreen(),
    );
  }
}
