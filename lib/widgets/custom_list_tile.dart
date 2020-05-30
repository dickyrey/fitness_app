import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final Widget title;
  final Widget subtitle;
  final Widget trailing;
  CustomListTile({this.subtitle, this.title, this.trailing});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 18.0),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              title,
              subtitle == null ? Container() : subtitle,
            ],
          ),
          Spacer(),
          trailing
        ],
      ),
    );
  }
}
