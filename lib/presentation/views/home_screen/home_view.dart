import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:home_food/Widget/bottom_sheet.dart';
import 'package:home_food/business/cubit/food_cubit.dart';

import 'home_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FoodCubit, FoodState>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = FoodCubit.get(context);
          return Scaffold(
            body: const HomeBody(),
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,


              currentIndex: cubit.currentIndex,
              onTap: (index) {
                 cubit.changeBottomNav(index);
                 modalBottomSheetMenu(context);
              },
              items: [
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    "assets/images/Icon feather-home.svg",
                    height: 30,
                  ),
                  label: "",
                ),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                        "assets/images/Icon feather-map-pin.svg",
                        height: 30),
                    label: ""),
                BottomNavigationBarItem(
                    icon: CircleAvatar(
                      radius: 40,
                      backgroundColor: HexColor("#F5835E"),
                      child: SvgPicture.asset("assets/images/XMLID_1193_.svg",
                          height: 50),
                    ),
                    label: ""),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                        "assets/images/Icon feather-heart.svg",
                        height: 30),
                    label: ""),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset("assets/images/wallet.svg",
                        height: 30),
                    label: ""),
              ],
            ),
          );
        });
  }
}
