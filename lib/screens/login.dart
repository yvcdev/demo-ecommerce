import 'package:demo_ecommerce/utils/utils.dart';
import 'package:demo_ecommerce/widgets/widgets.dart';
import 'package:flutter/material.dart';

import 'package:demo_ecommerce/layouts/layouts.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      appbar: false,
      backgroundColor: Constants.secondaryAccent,
      body: _CenteredBox(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            RoundedButton(title: 'Login', onClick: () {}),
            Constants.normalSeparationV,
            CustomTextButton(title: 'Register', onClick: () {}),
          ],
        ),
      ),
    );
  }
}

class _CenteredBox extends StatelessWidget {
  const _CenteredBox({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 400,
        decoration: BoxDecoration(boxShadow: [
          Constants.normalBoxShadow(
              color: Constants.primaryAccent.withOpacity(0.2))
        ], color: Constants.white, borderRadius: Constants.normalBorderRadius),
        child: child,
        padding: Constants.normalPadding,
      ),
    );
  }
}
