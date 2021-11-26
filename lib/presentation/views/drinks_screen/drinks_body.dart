import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:home_food/business/cubit/food_cubit.dart';

class DrinksBody extends StatelessWidget {
  const DrinksBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FoodCubit, FoodState>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = FoodCubit.get(context);
          return Container(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Maybe you would like to search🥺",
                  style: TextStyle(fontSize: 15, color: HexColor("#022136")),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildHeadContainer(context, "assets/images/007-pizza.svg", "Pizzas"),
                    buildHeadContainer(context, "assets/images/029-burger.svg", "Burger"),
                    buildHeadContainer(context, "assets/images/013-sandwich.svg", "Sandwich"),
                    buildHeadContainer(context, "assets/images/010-breakfast.svg", "Desayuno"),
                  ],
                )
              ],
            ),
          );
        });
  }
}

buildHeadContainer(BuildContext context, img, title) {
  return Container(
    padding: const EdgeInsets.all(10),
    width: 80,
    height: 100,
    decoration: BoxDecoration(
      color:  Colors.white12,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
            child: SvgPicture.asset(
          img,
      //    width: 70,
        )),
        Text(
          title,
          style: TextStyle(
              fontSize: 11,
              color: HexColor("#0E294E"),
              fontWeight: FontWeight.normal),
        ),
      ],
    ),
  );
}
