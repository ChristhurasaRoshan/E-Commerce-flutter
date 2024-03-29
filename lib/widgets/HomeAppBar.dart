import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget{
  @override 
  Widget build (BuildContext context){
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          Icon(
            Icons.sort,
            size: 30,
            color: Colors.grey,
          ),
          Padding(
            padding: EdgeInsets.only(
            left:20,
          ),
          child: Text("Online Shop" , 
          style:TextStyle(fontSize: 23,
          fontWeight: FontWeight.bold,
          color: Colors.pink,
          fontFamily: 'Poppins'
          ),
          ),
          ),
          Spacer(),
          badges.Badge(
            badgeStyle: badges.BadgeStyle(badgeColor: Colors.pink,
            padding: EdgeInsets.all(7)
            ),
           
            badgeContent: Text(
              "3",
              style: TextStyle(
                color: Colors.white,
              ),
              ),
              child: InkWell(
                onTap: (){},
                child: Icon(
                  Icons.shopping_bag_outlined,
                  size:32,
                  color: Colors.grey,
                ),
              ),
          )

        ],),
    );
  }
}
