import 'package:demo_ecommerce/screens/screens.dart';
import 'package:demo_ecommerce/utils/utils.dart';
import 'package:demo_ecommerce/widgets/widgets.dart';
import 'package:flutter/material.dart';

import 'package:demo_ecommerce/layouts/layouts.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      appbar: false,
      backgroundColor: Constants.secondaryAccent,
      body: _CenteredBox(
        children: [
          Form(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              children: [
                TextFormField(
                  validator: (value) {
                    if (!GetUtils.isEmail(value!)) {
                      return 'Please enter a valid email';
                    }

                    return null;
                  },
                  decoration: Constants.inputDecoration(
                    hintText: "email@email.com",
                    labelText: "Email",
                  ),
                ),
                Constants.largeSeparationV,
                TextFormField(
                  obscureText: true,
                  validator: (value) {
                    if (value!.length < 7) {
                      return 'Password must have more than 6 characters';
                    }

                    return null;
                  },
                  decoration: Constants.inputDecoration(
                    hintText: "********",
                    labelText: "Password",
                  ),
                ),
              ],
            ),
          ),
          Constants.largeSeparationV,
          RoundedButton(title: 'Log In', onClick: () {}),
          Constants.normalSeparationV,
          CustomTextButton(
              title: 'Sign Up?',
              onClick: () {
                Get.offAll(() => const Signup(), transition: Transition.fadeIn);
              }),
        ],
      ),
    );
  }
}

class _CenteredBox extends StatelessWidget {
  const _CenteredBox({Key? key, required this.children}) : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 250,
              width: 250,
              child: ClipRRect(
                child: Image.asset(
                  'assets/login.png',
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(250),
              ),
            ),
            Constants.largeSeparationV,
            Container(
              width: 400,
              decoration: BoxDecoration(
                  boxShadow: [
                    Constants.normalBoxShadow(
                        color: Constants.primaryAccent.withOpacity(0.2))
                  ],
                  color: Constants.white,
                  borderRadius: Constants.normalBorderRadius),
              child: Column(
                children: children,
              ),
              padding: Constants.normalPadding,
            ),
          ],
        ),
      ),
    );
  }
}
