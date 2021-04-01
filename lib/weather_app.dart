import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather/slider_doll.dart';
import 'weather.dart';
import 'weather_location.dart';

class time extends StatefulWidget {
  @override
  _timeState createState() => _timeState();
}

class _timeState extends State<time> {
  int _currentPage = 0;
  String bgImg;

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    if (locationList[_currentPage].weatherType == 'Sun') {
      bgImg = 'assets/sunny.jpg';
    } else if (locationList[_currentPage].weatherType == 'Night') {
      bgImg = 'assets/nightt.jpg';
    } else if (locationList[_currentPage].weatherType == 'Rain') {
      bgImg = 'assets/rainy-day.jpg';
    } else if (locationList[_currentPage].weatherType == 'Cloudy') {
      bgImg = 'assets/clouddy.jpg';
    }
      return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.search, color: Colors.white, size: 30,),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {},
              color: Colors.white,
            ),
          ],
          elevation: 0.0,
        ),
        body: Container(
          child: Stack(
            children: [
              Image.asset(
                bgImg,
                fit: BoxFit.cover,
                height: double.infinity,
                width: double.infinity,
              ),
              Container(
                decoration: BoxDecoration(color: Colors.black38),
              ),

              Container(
                margin: EdgeInsets.only(top: 130.0, left: 15.0),
                child: Row(
                  children: [
                    for( int i = 0; i < locationList.length; i++)
                      if(i == _currentPage)
                        sliderDol(true)
                      else
                        sliderDol(false)
                  ],
                ),
              ),
              PageView.builder(
                  scrollDirection: Axis.horizontal,
                  onPageChanged: _onPageChanged,
                  itemCount: locationList.length,
                  itemBuilder: (ctx, i) => single_weather(i)),

            ],

          ),
        ),
      );
    }
  }
