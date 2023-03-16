import 'package:alemeno_assigment/src/conifg/utils/commonWidgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../camera/camera.dart';

class HelloScreen extends StatelessWidget {
  const HelloScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CommonWidgets.DefultButton(
                  onPressed: () => Get.to(() => const CameraScreen()),
                  child: const Text(
                    'Share Your Meal',
                    style: TextStyle(color: Colors.white),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
