import 'package:flutter/material.dart';
class weatherlocation{
  final String city;
  final String dateTime;
  final String temparature;
  final String weatherType;
  final String iconUrl;
  final int wind;
  final int rain;
  final int humidity;

  weatherlocation({required this.city,required this.dateTime,required this.temparature,required this.weatherType,
     required this.iconUrl,required this.wind,required this.rain,required this.humidity});
}
final locationList = [
  weatherlocation(
      city: 'Cairo',
      dateTime : '07:30 PM - Monday, 23 oct 2021',
      temparature:'24',
      weatherType:'Night',
      iconUrl:'images/half-moon-png-2-Transparent-Images.png',
      wind:10,
      rain:7,
      humidity:10
  ),
  weatherlocation(
      city: 'Alexandria',
      dateTime : '10:50 AM - saterday, 30 oct 2021',
      temparature:'15',
      weatherType:'Sunny',
      iconUrl:'images/c.png',
      wind:15,
      rain:10,
      humidity:3
  ),
  weatherlocation(
      city: 'London',
      dateTime : '12:00 PM - frieday, 25 nov 2021',
      temparature:'14',
      weatherType:'Rainy',
      iconUrl:'images/lc.png',
      wind:19,
      rain:10,
      humidity:4,
  ),
  weatherlocation(
    city: 'Paris',
    dateTime : '19:15 PM - monday, 12 dec 2021',
    temparature:'20',
    weatherType:'Cloudy',
    iconUrl:'images/hc.png',
    wind:4,
    rain:12,
    humidity:8,
  ),
];