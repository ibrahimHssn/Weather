import 'package:weather/weather/domain/entities/weather.dart';
import 'package:weather/weather/domain/reposiltory/base_weather_reposiltory.dart';

class GetWeatherByCountryName{
  final BaseWeatherReposiltory reposiltory;

  GetWeatherByCountryName(this.reposiltory);

  Future<Weather> execute(String cityName) async{
   return await reposiltory.getWeatherByCityName(cityName);

  }
}
