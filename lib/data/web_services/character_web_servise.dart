
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:home_food/data/models/drinks_model.dart';

class WebServices {
  late Dio dio;

  WebServices() {
    BaseOptions options = BaseOptions(
        receiveDataWhenStatusError: true,
        receiveTimeout: 60 * 1000,
        sendTimeout: 60 * 1000);

    dio = Dio(options);
  }

  Future<List<DrinksModel>> getAllDrinks() async {
    try {
      Response response = await dio.get("https://flutter-test-api.herokuapp.com");
      return response.data;
    } catch (e) {
      debugPrint(e.toString());
      return [];
    }
  }
}
