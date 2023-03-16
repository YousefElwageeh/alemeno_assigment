import 'package:alemeno_assigment/src/conifg/theme/colorManger.dart';
import 'package:alemeno_assigment/src/conifg/theme/styles.dart';
import 'package:flutter/material.dart';

import '../../conifg/theme/font_manager.dart';

class EndScreen extends StatelessWidget {
  const EndScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('G O O D  J O B',
            style: getBoldStyle(
                color: ColorManager.primaryColor,
                fontSize: 50,
                fontFamily: FontConstants.LilitaOnefontFamily)),
      ),
    );
  }
}
