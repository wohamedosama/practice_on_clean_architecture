import 'package:weather/weather/domain/entity/weather.dart';

abstract class BaseWeatherRepository {
  Future<Weather> getWeatherByCityName(String cityName);
}
//abstract class act between data layer and domain layer
