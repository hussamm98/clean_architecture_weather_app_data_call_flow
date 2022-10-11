import 'package:flutter/material.dart';
import 'package:weather_clean_arch/data/datasource/remote_datasource.dart';
import 'package:weather_clean_arch/data/repository/weather_repository.dart';
import 'package:weather_clean_arch/domain/entities/weather_entity.dart';

import 'domain/repository/base_weather_repository.dart';
import 'domain/usecases/get_weather_usecase.dart';

void main() async {
  BaseRemoteDataSource baseRemoteDataSource = RemoteDataSource();
  BaseWeatherRepository baseWeatherRepository =
      WeatherRepository(baseRemoteDataSource);
  Weather weather = await GetWeatherUseCaseByCountyName(baseWeatherRepository)
      .execute("Egypt");
  print("Your City Name Query is => ${weather.cityName}");
  print("Your City Pressure is => ${weather.pressure}");
  print("Your City Description is => ${weather.description}");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Clean Architecture"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Data Call Flow In Clean Architecture',
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Console Response App Only',
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
