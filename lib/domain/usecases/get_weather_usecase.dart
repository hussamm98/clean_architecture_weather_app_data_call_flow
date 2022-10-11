import 'package:weather_clean_arch/domain/entities/weather_entity.dart';
import 'package:weather_clean_arch/domain/repository/base_weather_repository.dart';

class GetWeatherUseCaseByCountyName {
  final BaseWeatherRepository repository;

  GetWeatherUseCaseByCountyName(
    this.repository,
  );

  Future<Weather> execute(String countryName) async {
    return await repository.getWeatherByCountryName(countryName);
  }
}
