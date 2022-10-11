import 'package:weather_clean_arch/domain/entities/weather_entity.dart';

abstract class BaseWeatherRepository {
  Future<Weather> getWeatherByCountryName(String countryName);
}
