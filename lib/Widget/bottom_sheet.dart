import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:home_food/presentation/views/drinks_screen/drinks_home.dart';

void modalBottomSheetMenu(context) {
  showModalBottomSheet(
      context: context,
      builder: (builder) {
        return Container(
          height: 350.0,
          color: HexColor("#EAECF0"),
          //could change this to Color(0xFF737373),
          //so you don't have to change MaterialApp canvasColor
          child: Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                  // color: Colors.black38,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50.0),
                      topRight: Radius.circular(50.0))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Our menu",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: HexColor("#022136"),
                        fontSize: 30),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: (){Get.to(()=>const DrinksHome());},
                        child: circleAvatar(HexColor("#F5835E"), Colors.white,
                            'assets/images/cocktail@3x.png'),
                      ),
                      circleAvatar(HexColor("#F7F9FD"), Colors.grey,
                          'assets/images/coffee-cup.png'),
                      circleAvatar(HexColor("#F7F9FD"), Colors.grey,
                          'assets/images/breakfast.png'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      circleAvatar(HexColor("#F7F9FD"), Colors.grey,
                          'assets/images/meat.png'),
                      circleAvatar(HexColor("#F7F9FD"), Colors.grey,
                          'assets/images/outline.png'),
                      circleAvatar(HexColor("#F7F9FD"), Colors.grey,
                          'assets/images/outline.png'),
                    ],
                  )

                ],
              )),
        );
      });
}

CircleAvatar circleAvatar(Color color, Color iconColor, String img) {
  return CircleAvatar(
    radius: 40,
    backgroundColor: color,
    child: Image.asset(
      img,
      height: 45,
      color: iconColor,
    ),
    //    radius: 35,
  );
}
