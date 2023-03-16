import 'package:flutter/material.dart';
import 'package:alemeno_assigment/src/conifg/theme/font_manager.dart';

TextStyle _getTextStyle(
  double fontSize,
  FontWeight fontWeight,
  Color color, {
  String? fontFamily = FontConstants.AndikafontFamily,
}) {
  return TextStyle(
      fontSize: fontSize,
      fontFamily: fontFamily,
      color: color,
      fontWeight: fontWeight);
}

// regular style

TextStyle getRegularStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(fontSize, FontWeightManager.regular, color);
}

// medium style

TextStyle getMediumStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(fontSize, FontWeightManager.medium, color);
}

// medium style

// TextStyle getLightStyle(
//     {double fontSize = FontSize.s12, required Color color}) {
//   return _getTextStyle(fontSize, FontWeightManager.light, color);
// }

// bold style

TextStyle getBoldStyle({
  double fontSize = FontSize.s12,
  required Color color,
  String? fontFamily,
}) {
  return _getTextStyle(fontSize, FontWeightManager.bold, color,
      fontFamily: fontFamily);
}

// semibold style

TextStyle getSemiBoldStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(fontSize, FontWeightManager.semiBold, color);
}
