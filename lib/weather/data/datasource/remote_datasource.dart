// import 'dart:convert';
//
// import 'package:dio/dio.dart';
// import 'package:weather/core/utils/constance.dart';
// import 'package:weather/weather/data/models/weather_model.dart';
//
// abstract class BaseRemoteDataSource {
//   Future<WeatherModel?> getWeatherByCountryName(String countryName);
// }
//
// class RemoteDataSource implements BaseRemoteDataSource {
//   @override
//   Future<WeatherModel?> getWeatherByCountryName(String countryName) async {
//     try {
//       var response = await Dio().get(
//           '${AppConstance.baseUrl}/weather?q=$countryName&appid=${AppConstance.appKey}');
//       return WeatherModel.fromJson(
//         json.decode(response.data),
//       );
//     } catch (error) {
//       print(error.toString());
//       return null;
//     }
//   }
// }
import 'package:dio/dio.dart';
import 'package:weather/core/utils/constance.dart';
import 'package:weather/weather/data/models/weather_model.dart';

abstract class BaseRemoteDataSource {
  Future<WeatherModel?> getWeatherByCountryName(String countryName);
}

class RemoteDataSource implements BaseRemoteDataSource {
  @override
  Future<WeatherModel?> getWeatherByCountryName(String countryName) async {
    try {
      var response = await Dio().get(
          '${AppConstance.baseUrl}/weather?q=$countryName&appid=${AppConstance.appKey}');
      print(response);
      return WeatherModel.fromJson(response.data);
    } catch (error) {
      return null;
      print(error.toString());
    }
  }
}
