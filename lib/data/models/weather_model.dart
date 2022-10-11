import 'package:weather_clean_arch/domain/entities/weather_entity.dart';

class WeatherModel extends Weather {
  WeatherModel(
    int id,
    String cityName,
    String main,
    String description,
    int pressure,
  ) : super(
          id,
          cityName,
          main,
          description,
          pressure,
        );

  factory WeatherModel.fromJson(Map<String, dynamic> json) => WeatherModel(
        json['id'],
        json['name'],
        json['weather'][0]['main'],
        json['weather'][0]['description'],
        json['main']['pressure'],
      );
}
