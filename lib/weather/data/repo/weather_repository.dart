// import 'package:weather/weather/data/datasource/remote_datasource.dart';
// import 'package:weather/weather/domain/entity/weather.dart';
// import 'package:weather/weather/domain/repo/base_weather_repository.dart';
//
// class WeatherRepository implements BaseWeatherRepository {
//   final RemoteDataSource remoteDataSource;
//
//   WeatherRepository(this.remoteDataSource);
//
//   @override
//   Future<Weather> getWeatherByCityName(String countryName) async {
//     return (await remoteDataSource.getWeatherByCountryName(countryName))!;
//   }
// }
import 'package:weather/weather/data/datasource/remote_datasource.dart';
import 'package:weather/weather/domain/entity/weather.dart';
import 'package:weather/weather/domain/repo/base_weather_repository.dart';

class WeatherRepository implements BaseWeatherRepository {
  final BaseRemoteDataSource remoteDataSource;

  WeatherRepository(this.remoteDataSource);

  @override
  Future<Weather> getWeatherByCityName(String countryName) async {
    return (await remoteDataSource.getWeatherByCountryName(countryName))!;
  }
}
