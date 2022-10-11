import 'package:weather_clean_arch/data/datasource/remote_datasource.dart';
import 'package:weather_clean_arch/domain/entities/weather_entity.dart';
import 'package:weather_clean_arch/domain/repository/base_weather_repository.dart';

class WeatherRepository implements BaseWeatherRepository {
  final BaseRemoteDataSource baseRemoteDataSource;

  WeatherRepository(this.baseRemoteDataSource);

  @override
  Future<Weather> getWeatherByCountryName(String countryName) async {
    return (await baseRemoteDataSource.getWeatherByCountryName(countryName))!;
  }
}
