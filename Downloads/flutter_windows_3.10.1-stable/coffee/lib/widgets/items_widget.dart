import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screens/single_item_view.dart';

class ItemsWidget extends StatelessWidget {
  List img = [
    'Latte',
    'Espresso',
    'Black Coffee',
    'Cold Coffee',
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      childAspectRatio: (150 / 195),
      children: [
        for (int x = 0; x < img.length; x++)
          Container(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 13),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFF212325),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.4),
                    spreadRadius: 1,
                    blurRadius: 8,
                  )
                ]),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SingleItemScreen(img[x])));
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Image.asset(
                      "images/${img[x]}.png",
                      width: 120,
                      height: 120,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 8),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: [
                        Text(
                          img[x],
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Best Coffee",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white60),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$30",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.white
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Color(0xFFE57734),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Icon(CupertinoIcons.add,size: 20,color: Colors.white,),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
      ],
    );
  }
}
