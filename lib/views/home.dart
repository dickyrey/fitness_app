import 'package:fitness/constants.dart';
import 'package:fitness/widgets/custom_list_tile.dart';
import 'package:fitness/widgets/exercise_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:math' as math;

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double lol;
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 40.0),
            SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.0),
                child: Row(
                  children: [
                    Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage("assets/photo.jpeg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Spacer(),
                    Text("Gain Muscle", style: kTitleStyle),
                    Transform(
                      alignment: Alignment.center,
                      transform: Matrix4.rotationY(math.pi),
                      child: SvgPicture.asset(
                        "assets/muscle.svg",
                        width: 35.0,
                        color: kGreenColor,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 15.0),
            CustomListTile(
              title: Text("Nathan Owens", style: kTitleStyle),
              subtitle:
                  Text("You have new 12 notification", style: kSubtitleStyle),
              trailing: SvgPicture.asset(
                "assets/fire.svg",
                width: 35.0,
              ),
            ),
            SizedBox(height: 25.0),
            CustomListTile(
              title: Text("Nathan Owens", style: kTitleStyle),
              trailing: SvgPicture.asset(
                "assets/support.svg",
                width: 25.0,
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              width: double.infinity,
              height: 180.0,
              margin: EdgeInsets.only(left: 18.0),
              child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  // var exerci
                  return ExerciseCard();
                },
              ),
            ),
            SizedBox(height: 25.0),
            Container(
              width: double.infinity,
              height: 380.0,
              child: Stack(
                children: [
                  Positioned(
                    top: 0.0,
                    left: 20.0,
                    right: 0.0,
                    bottom: 0.0,
                    child: Container(
                      decoration: BoxDecoration(
                        color: kGreenColor,
                        borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(40.0)),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0.0,
                    top: 15.0,
                    right: 0.0,
                    bottom: 0.0,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        // horizontal: 20.0,
                        vertical: 25.0,
                      ),
                      decoration: BoxDecoration(
                        color: kIndigoColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40.0),
                        ),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 18.0),
                            child: Row(
                              children: [
                                Text("Weekly Progress", style: kTitle2Style),
                                Spacer(),
                                Text("10 Jun - 17 Jun", style: kSubtitle2Style),
                              ],
                            ),
                          ),
                          SizedBox(height: 25.0),
                          Container(
                            width: double.infinity,
                            padding:
                                const EdgeInsets.symmetric(horizontal: 18.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("80%", style: kProgressStyle),
                                SizedBox(width: 14.0),
                                VerticalDivider(
                                  color: kGreenColor,
                                  thickness: 5,
                                ),
                                SizedBox(width: 14.0),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Last Exercise",
                                            style: kTitle2Style.copyWith(
                                                fontSize: 12.0),
                                          ),
                                          Spacer(),
                                          Icon(
                                            Icons.arrow_forward,
                                            color: kGreyColor,
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 5.0),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          SvgPicture.asset(
                                            "assets/shoulder.svg",
                                            width: 29.0,
                                            color: Color(0xFFC25BD6),
                                          ),
                                          SvgPicture.asset(
                                            "assets/chest.svg",
                                            width: 29.0,
                                            color: Color(0xFFFC902C),
                                          ),
                                          SvgPicture.asset(
                                            "assets/abdominal.svg",
                                            width: 29.0,
                                            color: Color(0xFF0295ED),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Slider(
                            value: 80,
                            onChanged: (val) => lol = val,
                            activeColor: Colors.green,
                            max: 100,
                            min: 0.0,
                            inactiveColor: Colors.white,
                          ),
                          SizedBox(height: 25.0),
                          Container(
                            width: double.infinity,
                            height: 50.0,
                            margin: EdgeInsets.symmetric(horizontal: 18.0),
                            child: RaisedButton(
                              onPressed: () {},
                              color: Color(0xFF070A29),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Text(
                                "See all result",
                                style:
                                    kTitleStyle.copyWith(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
