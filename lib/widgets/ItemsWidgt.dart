import 'package:flutter/material.dart';

class ItemsWidgt extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return GridView.count(
      childAspectRatio: 0.68,
      //it disbale the scroll functionality of gridview
      //then it will scroll in list view of home page
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
        for (int i=1; i<8; i++)
        Container(
          padding: EdgeInsets.only(left: 15, right:15, top: 10 ),
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),

          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "-50%",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.favorite_border,
                    color: Colors.red,
                  )
                ],
              ),


              InkWell(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.all(8),
                  child: Image.asset(
                    "images/$i.png",
                    height: 120,
                    width: 120,
                  ),
                ),
              ),

              Container(
               
                alignment: Alignment.centerLeft,
                child: Text(
                  "Product Title",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.pink,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Write description of product",
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.grey,
                  ),
                ),
              ),

               Container(
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                    "Rs.1200.00",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.shopping_cart_checkout,
                      color: Colors.pink,
                    )
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    
    );
  }
}