import 'package:weather/weather/domain/entity/weather.dart';
import 'package:weather/weather/domain/repo/base_weather_repository.dart';

class GetWeatherByCountryName {
  final BaseWeatherRepository repository;

  GetWeatherByCountryName(this.repository);

//method name is execute that is called city name from abstract class with reference

  Future<Weather> execute(String cityName) async {
    return await repository.getWeatherByCityName(cityName);
  }
}
//interact with repository
//implementation the use case
//encapsulate the business logic
