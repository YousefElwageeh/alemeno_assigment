import 'package:flutter/material.dart';

import 'package:alemeno_assigment/src/conifg/theme/colorManger.dart';

class CommonWidgets {
  static Widget DefultButton(
      {required Widget child,
      void Function()? onPressed,
      bool isCircle = false}) {
    return Padding(
        padding: const EdgeInsets.all(28),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ButtonStyle(
              backgroundColor:
                  MaterialStatePropertyAll(ColorManager.primaryColor)),
          child: child,
        ));
  }
}
