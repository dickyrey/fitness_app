import 'package:fitnes/constants.dart';
import 'package:flutter/material.dart';

class ExerciseCard extends StatelessWidget {
  const ExerciseCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140.0,
      margin: const EdgeInsets.only(right: 18.0),
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        image: const DecorationImage(
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
