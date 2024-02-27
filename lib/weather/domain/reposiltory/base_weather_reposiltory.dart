import 'package:weather/weather/domain/entities/weather.dart';

abstract class BaseWeatherReposiltory{
  Future<Weather> getWeatherByCityName(String cityName);
}