import 'dart:convert';

import 'package:weather/core/utils/constances.dart';
import 'package:weather/weather/data/models/weather_model.dart';
import 'package:dio/dio.dart';

abstract class BaseRemoteDataSource{
  Future<WeatherModel?> getWeatherByCountryName( String countryName);
}

class RemoteDataSource implements BaseRemoteDataSource{
  @override
  Future<WeatherModel?> getWeatherByCountryName(String countryName) async{
    try{
      final dio = Dio();
      final response = await dio.get("${AppConstances.baseUrl}/weather?q=$countryName&appid=${AppConstances.apiKey}");
      print(response);

      return WeatherModel.fromJson(response.data);
    }
    catch(e){
      print("getWeatherByCountryName: $e ");
      return null;
    }


}
}