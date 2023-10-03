// import 'package:weather/weather/domain/entity/weather.dart';
//
// class WeatherModel extends Weather {
//   WeatherModel(
//     super.id,
//     super.main,
//     super.cityName,
//     super.description,
//     super.pressure,
//   );
//
//   factory WeatherModel.fromJson(Map<String, dynamic> json) => WeatherModel(
//         json['id'],
//         json['name'],
//         json['weather'][0]['main'],
//         json['weather'][0]['description'],
//         json['main']['pressure'],
//       );
// }
import 'package:weather/weather/domain/entity/weather.dart';

class WeatherModel extends Weather {
  WeatherModel(
    super.id,
    super.main,
    super.cityaName,
    super.descrption,
    super.pressure,
  );

  factory WeatherModel.fromJson(Map<String, dynamic> json) => WeatherModel(
        json['id'],
        json['weather'][0]['main'],
        json['name'],
        json['weather'][0]['description'],
        json['main']['pressure'],
      );
}
