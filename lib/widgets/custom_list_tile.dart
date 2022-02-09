import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final Widget title;
  final Widget? subtitle;
  final Widget trailing;

  const CustomListTile({
    Key? key,
    required this.title,
    this.subtitle,
    required this.trailing,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              title,
              subtitle ?? const SizedBox(),
            ],
          ),
          const Spacer(),
          trailing
        ],
      ),
    );
  }
}
