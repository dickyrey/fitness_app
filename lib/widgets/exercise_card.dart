import 'package:fitness/constants.dart';
import 'package:flutter/material.dart';

class ExerciseCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140.0,
      margin: EdgeInsets.only(right: 18.0),
      padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        image: DecorationImage(
          image: AssetImage("assets/shoulder.jpg"),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Color(0xFF636477),
            BlendMode.color,
          ),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            "SHOULDER",
            style: kTitleStyle.copyWith(color: Colors.white),
          ),
          Divider(
            color: kGreenColor,
            thickness: 1,
          ),
        ],
      ),
    );
  }
}
