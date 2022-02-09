import 'package:fitnes/constants.dart';
import 'package:fitnes/widgets/custom_list_tile.dart';
import 'package:fitnes/widgets/exercise_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:math' as math;

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 40.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Row(
              children: [
                Container(
                  width: 50.0,
                  height: 50.0,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage("assets/photo.jpeg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Spacer(),
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
          const SizedBox(height: 15.0),
          CustomListTile(
            title: Text("Nathan Owens", style: kTitleStyle),
            subtitle:
                Text("You have new 12 notification", style: kSubtitleStyle),
            trailing: SvgPicture.asset(
              "assets/fire.svg",
              width: 35.0,
            ),
          ),
          const SizedBox(height: 25.0),
          CustomListTile(
            title: Text("Nathan Owens", style: kTitleStyle),
            trailing: SvgPicture.asset(
              "assets/support.svg",
              width: 25.0,
            ),
          ),
          const SizedBox(height: 20.0),
          Container(
            width: double.infinity,
            height: 180.0,
            margin: const EdgeInsets.only(left: 18.0),
            child: ListView.builder(
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                // var exerci
                return const ExerciseCard();
              },
            ),
          ),
          const SizedBox(height: 25.0),
          SizedBox(
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
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(40.0),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 0.0,
                  top: 15.0,
                  right: 0.0,
                  bottom: 0.0,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      // horizontal: 20.0,
                      vertical: 25.0,
                    ),
                    decoration: BoxDecoration(
                      color: kIndigoColor,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(40.0),
                      ),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18.0),
                          child: Row(
                            children: [
                              Text("Weekly Progress", style: kTitle2Style),
                              const Spacer(),
                              Text("10 Jun - 17 Jun", style: kSubtitle2Style),
                            ],
                          ),
                        ),
                        const SizedBox(height: 25.0),
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(horizontal: 18.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("80%", style: kProgressStyle),
                              const SizedBox(width: 14.0),
                              VerticalDivider(
                                color: kGreenColor,
                                thickness: 5,
                              ),
                              const SizedBox(width: 14.0),
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
                                        const Spacer(),
                                        Icon(
                                          Icons.arrow_forward,
                                          color: kGreyColor,
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 5.0),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        SvgPicture.asset(
                                          "assets/shoulder.svg",
                                          width: 29.0,
                                          color: const Color(0xFFC25BD6),
                                        ),
                                        SvgPicture.asset(
                                          "assets/chest.svg",
                                          width: 29.0,
                                          color: const Color(0xFFFC902C),
                                        ),
                                        SvgPicture.asset(
                                          "assets/abdominal.svg",
                                          width: 29.0,
                                          color: const Color(0xFF0295ED),
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
                          onChanged: (val) {},
                          activeColor: Colors.green,
                          max: 100,
                          min: 0.0,
                          inactiveColor: Colors.white,
                        ),
                        const SizedBox(height: 25.0),
                        Container(
                          width: double.infinity,
                          height: 50.0,
                          margin: const EdgeInsets.symmetric(horizontal: 18.0),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              primary: const Color(0xFF070A29),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                            child: Text(
                              "See all result",
                              style: kTitleStyle.copyWith(color: Colors.white),
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
    );
  }
}
