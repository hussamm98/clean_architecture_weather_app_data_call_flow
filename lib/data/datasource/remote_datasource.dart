import 'package:dio/dio.dart';
import 'package:weather_clean_arch/core/utils/constants.dart';
import 'package:weather_clean_arch/data/models/weather_model.dart';

abstract class BaseRemoteDataSource {
  Future<WeatherModel?> getWeatherByCountryName(String countryName);
}

class RemoteDataSource implements BaseRemoteDataSource {
  @override
  Future<WeatherModel?> getWeatherByCountryName(String countryName) async {
    try {
      var response = await Dio().get(
          "${AppConstant.appUrl}/weather?q=$countryName&appid=${AppConstant.appKey}");
      print(response.data);
      return WeatherModel.fromJson(response.data);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
