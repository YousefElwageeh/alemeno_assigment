// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:alemeno_assigment/src/conifg/theme/colorManger.dart';

import 'package:alemeno_assigment/src/conifg/theme/font_manager.dart';
import 'package:alemeno_assigment/src/conifg/theme/hexcolor.dart';
import 'package:alemeno_assigment/src/conifg/theme/styles.dart';

class AppTheme {
  static ThemeData lightTheme() {
    return ThemeData(
      fontFamily: FontConstants.AndikafontFamily,
      appBarTheme: AppBarTheme(color: HexColor("#3E8B3A")),
      popupMenuTheme: const PopupMenuThemeData(color: Colors.white),
      iconTheme: const IconThemeData(color: Color(0xff2b2b2b)),
      primaryColor: ColorManager.primaryColor,
      splashColor: Colors.white.withOpacity(0.1),
      hoverColor: Colors.transparent,
      splashFactory: InkRipple.splashFactory,
      highlightColor: Colors.transparent,
      canvasColor: Colors.white,
      scaffoldBackgroundColor: ColorManager.scaffoldBackgroundColor,
      backgroundColor: Colors.white,
      errorColor: Colors.red,
      //   buttonColor: Color(primaryColor),
      textTheme: textTheme(),
      primaryTextTheme: textTheme(),
      platform: TargetPlatform.iOS,
      shadowColor: Colors.black,
      indicatorColor: ColorManager.primaryColor,
      disabledColor: Colors.black.withOpacity(0.1),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              textStyle: getRegularStyle(
                  color: ColorManager.scaffoldBackgroundColor,
                  fontSize: FontSize.s17),
              primary: ColorManager.primaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)))),
    );
  }

  static TextTheme textTheme() {
    return TextTheme(
        displayLarge: getSemiBoldStyle(
            color: ColorManager.TextColor, fontSize: FontSize.s22),
        headlineLarge: getSemiBoldStyle(
            color: ColorManager.TextColor, fontSize: FontSize.s16),
        headlineMedium: getRegularStyle(
            color: ColorManager.TextColor, fontSize: FontSize.s14),
        titleMedium: getMediumStyle(
            color: ColorManager.TextColor, fontSize: FontSize.s16),
        bodyLarge: getRegularStyle(color: ColorManager.TextColor),
        bodySmall: getRegularStyle(color: ColorManager.TextColor));
  }
}
