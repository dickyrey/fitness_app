import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:fitnes/constants.dart';
import 'package:fitnes/views/analytics.dart';
import 'package:fitnes/views/home.dart';
import 'package:fitnes/views/schedule.dart';
import 'package:fitnes/views/settings.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;
  onTappedItem(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const List<Widget> _viewList = [
    Home(),
    Analytics(),
    Schedule(),
    Setting(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        _viewList.elementAt(_selectedIndex),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: bottomNavigationBar,
        )
      ],
    ));
  }

  Widget get bottomNavigationBar {
    return BottomNavigationBar(
      onTap: onTappedItem,
      currentIndex: _selectedIndex,
      backgroundColor: Colors.transparent,
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      // selectedItemColor: kGreenColor,
      iconSize: 25.0,
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            "assets/gym.svg",
            width: 25.0,
            color: kGreyColor,
          ),
          activeIcon: SvgPicture.asset(
            "assets/gym.svg",
            width: 25.0,
            color: kGreenColor,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            "assets/chart.svg",
            color: kGreyColor,
            width: 25.0,
          ),
          activeIcon: SvgPicture.asset(
            "assets/chart.svg",
            color: kGreenColor,
            width: 25.0,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            "assets/calendar.svg",
            width: 25.0,
            color: kGreyColor,
          ),
          activeIcon: SvgPicture.asset(
            "assets/calendar.svg",
            width: 25.0,
            color: kGreenColor,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            "assets/settings.svg",
            width: 25.0,
            color: kGreyColor,
          ),
          activeIcon: SvgPicture.asset(
            "assets/settings.svg",
            width: 25.0,
            color: kGreenColor,
          ),
          label: '',
        ),
      ],
    );
  }
}
