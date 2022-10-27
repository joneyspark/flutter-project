import 'package:flutter/material.dart';
import 'package:helloworld/clima/screens/city_screen.dart';
import 'package:helloworld/clima/screens/loading_screen.dart';
import 'package:helloworld/clima/services/weather.dart';
import 'package:helloworld/clima/util/constants.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key, required this.locationWeather});
  final locationWeather;
  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  WeatherModel weatherModel = WeatherModel();
  late int temperature;
  late String temperatureText;
  late String weatherIcon;
  late String cityName;

  @override
  void initState() {
    super.initState();
    updateUI(widget.locationWeather);
  }

  void updateUI(dynamic wetherData) {
    if (wetherData == null) {
      temperature = 0;
      weatherIcon = 'Error';
      temperatureText = 'Unable to get weather data';
      cityName = '';
      return;
    }
    double temp = wetherData['main']['temp'];
    temperature = temp.toInt();
    temperatureText = weatherModel.getMessage(temperature);
    var condition = wetherData['weather'][0]['id'];
    weatherIcon = weatherModel.getWeatherIcon(condition);
    cityName = wetherData['name'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Weather"),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage("images/location_background.jpeg"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.white.withOpacity(0.6),
              BlendMode.dstATop,
            ),
          ),
        ),
        constraints: const BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: (() async {
                      var weatherData = await weatherModel.getWeatherData();
                      setState(() {
                        updateUI(weatherData);
                      });
                    }),
                    child: const Icon(
                      Icons.near_me,
                      color: Colors.white,
                      size: 50.0,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: (() async {
                      var typeName = await Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return const CityScreen();
                        }),
                      );
                      if (typeName != null) {
                        var weatherData =
                            await weatherModel.getCityWeather(typeName);
                        setState(() {
                          updateUI(weatherData);
                        });
                      }
                    }),
                    child: const Icon(
                      Icons.location_city,
                      color: Colors.white,
                      size: 50.0,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Row(
                  children: [
                    Text(
                      '$temperature°',
                      style: kTempTextStyle,
                    ),
                    Text(
                      weatherIcon,
                      style: kConditionTextStyle,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: Text(
                  "$temperatureText in $cityName!",
                  textAlign: TextAlign.right,
                  style: kMessageTextStyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
