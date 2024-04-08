import 'package:flutter/material.dart';
import 'package:flutter_counter_app/screens/auth-ui/sign-up-screen.dart';
import 'package:flutter_counter_app/screens/auth-ui/splash-screen.dart';
import 'package:flutter_counter_app/screens/user-panel/main-screen.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import 'firebase_options.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
 runApp(const MyApp());}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      
      home: const SplashScreen(),
      builder: EasyLoading.init(),
    );
  }
}
