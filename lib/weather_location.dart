import 'package:flutter/material.dart';

class WeatherLocation{
  final String city;
  final String dateTime;
  final String temperature;
  final String weatherType;
  final String iconUrl;
  final int wind;
  final int rain;
  final int humidity;

  WeatherLocation({
    @required this.city,
    @required this.dateTime,
    @required this.temperature,
    @required this.weatherType,
    @required this.iconUrl,
    @required this.wind,
    @required this.rain,
    @required this.humidity,
});
}

final locationList =  [
  WeatherLocation(
    city: 'Lagos',
    dateTime: '02:30 PM - Friday, 2 April 2021',
    temperature: '24\u2103',
    weatherType: "Night",
    iconUrl: 'assets/icons8-crescent-moon-48.png',
    wind: 10,
    rain: 7,
    humidity: 10,
  ),
  WeatherLocation(
    city: 'New York',
    dateTime: '08:30 AM - Friday, 2 April 2021',
    temperature: '15\u2103',
    weatherType: "Cloudy",
    iconUrl: 'assets/iconcloud2.png',
    wind: 8,
    rain: 7,
    humidity: 82,
    ),
  WeatherLocation(
    city: 'London',
    dateTime: '01:30 PM - Friday, 2 April 2021',
    temperature: '17\u2103',
    weatherType: "Sun",
    iconUrl: 'assets/iconsun2.png',
    wind: 5,
    rain: 15,
    humidity: 61,
  ),
  WeatherLocation(
    city: 'Sydney',
    dateTime: '04:30 PM - Friday, 2 April 2021',
    temperature: '10\u2103',
    weatherType: "Rain",
    iconUrl: 'assets/iconrain.png',
    wind: 20,
    rain: 70,
    humidity: 91,
  ),



];