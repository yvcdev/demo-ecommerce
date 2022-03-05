import 'package:flutter/material.dart';

import 'package:demo_ecommerce/utils/utils.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton(
      {Key? key,
      required this.title,
      required this.onClick,
      this.backgrondColor = Constants.primaryAccent,
      this.color = Constants.white})
      : super(key: key);

  final String title;
  final Color? backgrondColor;
  final Color? color;
  final Function onClick;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onClick();
      },
      child: Container(
          padding: Constants.smallPadding,
          child: Text(title, style: Constants.normalTextStyle(color: color!)),
          decoration: BoxDecoration(
              color: backgrondColor,
              borderRadius: Constants.smallBorderRadius)),
    );
  }
}
