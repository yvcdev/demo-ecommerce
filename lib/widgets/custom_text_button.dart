import 'package:flutter/material.dart';

import 'package:demo_ecommerce/utils/utils.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton(
      {Key? key,
      required this.title,
      required this.onClick,
      this.color = Constants.primaryAccent})
      : super(key: key);

  final String title;
  final Color? color;
  final Function onClick;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onClick();
      },
      child: Text(title, style: Constants.smallTextStyle(color: color!)),
    );
  }
}
