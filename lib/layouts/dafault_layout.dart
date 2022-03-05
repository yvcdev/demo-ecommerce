import 'package:flutter/material.dart';

import 'package:demo_ecommerce/utils/constants.dart';
import 'package:demo_ecommerce/widgets/widgets.dart';

class DefaultLayout extends StatelessWidget {
  const DefaultLayout(
      {Key? key,
      required this.body,
      this.appbar = true,
      this.drawer = true,
      this.title = '',
      this.backgroundColor = Constants.almostWhite})
      : super(key: key);

  final Widget body;
  final bool? drawer;
  final bool? appbar;
  final String? title;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: appbar!
          ? AppBar(
              title: Text(title!),
            )
          : null,
      drawer: drawer! ? const CustomDrawer() : null,
      body: Padding(
        padding: Constants.normalPadding,
        child: body,
      ),
    );
  }
}
