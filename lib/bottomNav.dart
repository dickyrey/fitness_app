import 'package:fitness/constants.dart';
import 'package:fitness/views/analytics.dart';
import 'package:fitness/views/home.dart';
import 'package:fitness/views/schedule.dart';
import 'package:fitness/views/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNav extends StatefulWidget {
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

  static List<Widget> _viewList = [
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
          title: Text(""),
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
          title: Text(""),
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
          title: Text(""),
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
          title: Text(""),
        ),
      ],
    );
  }
}
