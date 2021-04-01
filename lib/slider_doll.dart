import 'package:flutter/material.dart';

class sliderDol extends StatelessWidget {
  bool isActive;
  sliderDol(this.isActive);
  @override
  Widget build(BuildContext context) {
    return  AnimatedContainer(
      duration: Duration(microseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 5.0),
      width: isActive ? 12 : 5,
      height: 5,
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Colors.white54,
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
      ),
    );
  }
}
