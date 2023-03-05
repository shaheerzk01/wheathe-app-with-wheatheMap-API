import 'package:climate/services/location.dart';
import 'package:climate/services/networking.dart';

const apikey = '9d413fc80d3a80466d1757f5e3065a3c';
const weatherMapURL = 'https://api.openweathermap.org/data/2.5/weather';

class weathermodel{

  Future<dynamic> cityWeatherData(String cityName) async{
    Networkhelper networkhelper = Networkhelper('$weatherMapURL?q=$cityName&appid=$apikey&units=metric');
    var weatherData = await networkhelper.getData();
    return weatherData;
  }

  Future<dynamic> getLocationWeather() async{
    Location location = Location();
    await location.getCurrentLocation();

    Networkhelper networkhelper = Networkhelper('$weatherMapURL?lat=${location.latitude}&lon=${location.longitude}&appid=$apikey&units=metric');

    var weatherData = await networkhelper.getData();
    return weatherData;
  }
  String getweatherIcon(int condition){
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp){
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}