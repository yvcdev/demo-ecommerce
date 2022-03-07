import 'package:demo_ecommerce/screens/login.dart';
import 'package:demo_ecommerce/utils/utils.dart';
import 'package:demo_ecommerce/widgets/widgets.dart';
import 'package:flutter/material.dart';

import 'package:demo_ecommerce/layouts/layouts.dart';
import 'package:get/get.dart';

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String password = '';

    return DefaultLayout(
      appbar: false,
      backgroundColor: Constants.secondaryAccent,
      body: SingleChildScrollView(
        child: _CenteredBox(
          children: [
            Form(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                children: [
                  Text(
                    'Demo E-commerce',
                    style: Constants.normalTextStyleBold(
                        color: Constants.secondaryAccent),
                  ),
                  Constants.largeSeparationV,
                  TextFormField(
                    validator: (value) {
                      if (!GetUtils.isEmail(value!)) {
                        return 'Please enter a valid email';
                      }

                      return null;
                    },
                    decoration: Constants.inputDecoration(
                      hintText: "username",
                      labelText: "Username",
                    ),
                  ),
                  Constants.largeSeparationV,
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
                    onChanged: (value) {
                      password = value;
                    },
                  ),
                  Constants.largeSeparationV,
                  TextFormField(
                    obscureText: true,
                    validator: (value) {
                      if (value! != password) {
                        return 'Passwords must match';
                      }

                      return null;
                    },
                    decoration: Constants.inputDecoration(
                      hintText: "********",
                      labelText: "Confirm Password",
                    ),
                  ),
                ],
              ),
            ),
            Constants.largeSeparationV,
            RoundedButton(title: 'Sign Up', onClick: () {}),
            Constants.normalSeparationV,
            CustomTextButton(
                title: 'Log in?',
                onClick: () {
                  Get.offAll(() => const Login(),
                      transition: Transition.fadeIn);
                }),
          ],
        ),
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
    );
  }
}
