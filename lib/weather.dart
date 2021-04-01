import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather/weather_location.dart';

class single_weather extends StatelessWidget {
  final int index;
  single_weather(this.index);

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.only(left: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 150.0,),
                    Text(
                      locationList[index].city,
                      style: GoogleFonts.lato(
                        fontWeight: FontWeight.w300,
                        fontSize: 40.0,
                        color: Colors.white),),
                    Text(
                      locationList[index].dateTime,
                      style: GoogleFonts.lato(
                          fontWeight: FontWeight.w300,
                          fontSize: 16.0,
                          color: Colors.white),),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      locationList[index].temperature,
                      style: GoogleFonts.lato(
                        fontWeight: FontWeight.w300,
                        fontSize: 80.0,
                        color: Colors.white),),
                    Row(
                      children: [
                        Image.asset(
                          locationList[index].iconUrl,
                          width: 40.0,
                          height: 40.0,
                        ),

                        Text(
                          locationList[index].weatherType,
                          style: GoogleFonts.lato(
                              fontWeight: FontWeight.w500,
                              fontSize: 16.0,
                              color: Colors.white),),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 40.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      locationList[index].wind.toString(),
                      style: GoogleFonts.lato(
                        fontWeight: FontWeight.w300,
                        fontSize: 20.0,
                        color: Colors.white),),
                    Text(
                      locationList[index].rain.toString(),
                      style: GoogleFonts.lato(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.white),),
                    Text(locationList[index].humidity.toString(),
                      style: GoogleFonts.lato(
                        fontWeight: FontWeight.w300,
                        fontSize: 12.0,
                        color: Colors.white),),
                    Stack(
                      children: [
                        Container(
                          height: 5,
                          width: 50,
                          color: Colors.white38,
                        ),
                        Container(
                          height: 5,
                          width: 5,
                          color: Colors.greenAccent,
                        ),
                      ],
                    ),
                  ],
                ),

                Column(
                  children: [
                    Text("Rain", style: GoogleFonts.lato(
                        fontWeight: FontWeight.w300,
                        fontSize: 20.0,
                        color: Colors.white),),
                    Text("2", style: GoogleFonts.lato(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.white),),
                    Text("%", style: GoogleFonts.lato(
                        fontWeight: FontWeight.w300,
                        fontSize: 12.0,
                        color: Colors.white),),
                    Stack(
                      children: [
                        Container(
                          height: 5,
                          width: 50,
                          color: Colors.white38,
                        ),
                        Container(
                          height: 5,
                          width: 5,
                          color: Colors.redAccent,
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text("Humidity", style: GoogleFonts.lato(
                        fontWeight: FontWeight.w300,
                        fontSize: 20.0,
                        color: Colors.white),),
                    Text("10", style: GoogleFonts.lato(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.white),),
                    Text("%", style: GoogleFonts.lato(
                        fontWeight: FontWeight.w300,
                        fontSize: 12.0,
                        color: Colors.white),),
                    Stack(
                      children: [
                        Container(
                          height: 5,
                          width: 50,
                          color: Colors.white38,
                        ),
                        Container(
                          height: 5,
                          width: 5,
                          color: Colors.redAccent,
                        ),
                      ],
                    ),
                  ],
                ),

              ],
            ),
          ),

        ],
      ),
    );
  }
}
