// ignore_for_file: file_names, prefer_const_constructors, no_leading_underscores_for_local_identifiers, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables


import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_counter_app/screens/auth-ui/welcome-screen.dart';
import 'package:flutter_counter_app/utils/app-constant.dart';
import 'package:flutter/services.dart';
import 'package:flutter_counter_app/widgets/banner-widget.dart';
import 'package:flutter_counter_app/widgets/custom-drawer-widget.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: AppConstant.appTextColor),
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: AppConstant.appScendoryColor,
            statusBarIconBrightness: Brightness.light),
        backgroundColor: AppConstant.appMainColor,
        title: Text(
          AppConstant.appMainName,
          style: TextStyle(color: AppConstant.appTextColor),
        ),
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: () async{
              GoogleSignIn googleSignIn=GoogleSignIn();
              FirebaseAuth _auth=FirebaseAuth.instance; 
              await _auth.signOut();
              await googleSignIn.signOut();
              Get.offAll(()=>WelcomeScreen());
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.logout,
              ),
            ),
          ),
        ],
      ),
      drawer: DrawerWidget(),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: Get.height / 90.0,
              ),
              //banners
              BannerWidget(),

              //heading
              // HeadingWidget(
              //   headingTitle: "Categories",
              //   headingSubTitle: "According to your budget",
              //   onTap: () => Get.to(() => AllCategoriesScreen()),
              //   buttonText: "See More >",
              // ),

              // CategoriesWidget(),

              // //heading
              // HeadingWidget(
              //   headingTitle: "Flash Sale",
              //   headingSubTitle: "According to your budget",
              //   onTap: () => Get.to(() => AllFlashSaleProductScreen()),
              //   buttonText: "See More >",
              // ),

              // FlashSaleWidget(),

              // //heading
              // HeadingWidget(
              //   headingTitle: "All Products",
              //   headingSubTitle: "According to your budget",
              //   onTap: () => Get.to(() => AllProductsScreen()),
              //   buttonText: "See More >",
              // ),

              // AllProductsWidget(),
            ],
          ),
        ),
      ),
      );
  }}
        