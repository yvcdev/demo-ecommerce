import 'package:flutter/material.dart';

class Constants {
  //Colors
  static const primary = Color.fromRGBO(229, 119, 188, 1);
  static const secondary = Color.fromRGBO(133, 138, 227, 1);
  static const primaryAccent = Color.fromRGBO(197, 33, 132, 1);
  static const secondaryAccent = Color.fromRGBO(78, 20, 140, 1);
  static const highContrast = Color.fromRGBO(55, 55, 31, 1);
  static const green = Color.fromRGBO(20, 203, 1, 1);
  static const red = Color.fromRGBO(230, 14, 25, 1);
  static const almostWhite = Color.fromRGBO(249, 247, 245, 1);
  static const almostBlack = Color.fromRGBO(61, 61, 61, 1);
  static const white = Colors.white;
  static const black = Colors.black;

  //Measures
  static const smallPadding = EdgeInsets.all(8.0);
  static const normalPadding = EdgeInsets.all(20.0);
  static final smallBorderRadius = BorderRadius.circular(8);
  static final normalBorderRadius = BorderRadius.circular(15);
  static const normalSeparationV = SizedBox(height: 15);
  static const normalSeparationH = SizedBox(width: 15);
  static const largeSeparationV = SizedBox(height: 30);

  //styles
  static TextStyle normalTextStyle({Color color = Colors.black}) =>
      TextStyle(fontSize: 20, color: color);
  static TextStyle smallTextStyle({Color color = Colors.black}) =>
      TextStyle(fontSize: 16, color: color);
  static BoxShadow normalBoxShadow({Color? color}) => BoxShadow(
        color: color ?? Colors.grey.withOpacity(0.5),
        spreadRadius: 5,
        blurRadius: 10,
        offset: const Offset(0, 2),
      );
  static InputDecoration inputDecoration({
    String? hintText,
    String? labelText = '',
    Color focusColor = primary,
    IconData? iconData,
  }) =>
      InputDecoration(
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(
                Radius.circular(12),
              ),
              borderSide: BorderSide(color: focusColor, width: 2)),
          hintText: hintText,
          labelStyle: TextStyle(color: focusColor),
          focusColor: focusColor,
          icon: iconData != null
              ? Icon(
                  iconData,
                  color: focusColor,
                )
              : null,
          label: Text(labelText!));
}
