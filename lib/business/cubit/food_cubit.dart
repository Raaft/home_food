import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_food/data/models/drinks_model.dart';
import 'package:home_food/data/web_services/character_web_servise.dart';
import 'package:meta/meta.dart';

part 'food_state.dart';

class FoodCubit extends Cubit<FoodState> {
  final WebServices webServices;
  FoodCubit(this.webServices) : super(FoodInitial());

  static FoodCubit get(context) => BlocProvider.of(context);


  int currentIndex = 0;

  void changeBottomNav(int index) {
    currentIndex = index;
    emit(RestaurantChangeBottomNavState());
  }

  late List<DrinksModel> drinksList;

  List<DrinksModel>  getAllDrinks(){
    webServices.getAllDrinks().then((value) {
      drinksList=value;
      emit(GetDrinks());
    }
    );
    return drinksList;

  }


}



