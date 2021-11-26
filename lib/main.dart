import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:home_food/business/cubit/food_cubit.dart';
import 'package:home_food/data/web_services/character_web_servise.dart';
import 'package:home_food/presentation/views/home_screen/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (BuildContext context) => FoodCubit(WebServices()))
        ],
        child: BlocConsumer<FoodCubit, FoodState>(listener: (context, state) {
          //  AuthCubit.get(context).getUser();
        }, builder: (context, state) {
         // var cubit = FoodCubit.get(context);
          return const GetMaterialApp(
            debugShowCheckedModeBanner: false,
            home: HomeView(),
          );
        }));
  }
}
