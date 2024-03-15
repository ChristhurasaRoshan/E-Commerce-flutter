import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_counter_app/widgets/CategoriesWidgt.dart';
import 'package:flutter_counter_app/widgets/HomeAppBar.dart';
import 'package:flutter_counter_app/widgets/ItemsWidgt.dart';

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}



class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: ListView(children: [
        HomeAppBar(),
        Container(
          //height:800,
          padding: EdgeInsets.only(top: 15),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 251, 224, 233),
            borderRadius: BorderRadius.only(
              topLeft:  Radius.circular(35),
              topRight:  Radius.circular(35),
            ),
          ),
          child: Column(
            children: [

              //search widget
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                padding: EdgeInsets.symmetric(horizontal:10),
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 5),
                      height: 50,
                      width: 300,
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search here...",
                          hintStyle: TextStyle(
                            fontFamily: 'Poppins'
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.camera_alt,
              
                      size: 27,
                      color: Colors.pink,
                    ),
                    ],
                ),
              ),


              //category
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 10,
                ),
                child: Text(
                  "Categories",
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    color: Colors.pink,
                  ),
                ),
              ),


              //categories widget
              CategoriesWidgt(),

              //items
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                child: Text(
                  "Best Selling",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink
                  ),
                ),
              ),

              //items widgt
              ItemsWidgt(),

            ],
            ),
        ),
      ],),


      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        onTap: (index) {},
        color: Colors.pink,
        height: 70,
        items: [
          Icon(
            Icons.home,
            size: 30,
            color: Colors.white,
          ),
           Icon(
            Icons.category,
            size: 30,
            color: Colors.white,
          ), Icon(
            Icons.shopping_cart,
            size: 30,
            color: Colors.white,
          ),
           Icon(
            Icons.account_box_rounded,
            size: 30,
            color: Colors.white,
          ),
        ],
       ),
    );
  }
}

