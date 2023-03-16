import 'dart:io';

import 'package:alemeno_assigment/src/conifg/theme/colorManger.dart';
import 'package:alemeno_assigment/src/conifg/theme/styles.dart';
import 'package:alemeno_assigment/src/conifg/utils/assetsManger.dart';
import 'package:alemeno_assigment/src/view/camera/cameraViewModel.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CameraScreen extends StatelessWidget {
  const CameraScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    // ignore: no_leading_underscores_for_local_identifiers
    var _cameraViewModel = Get.put(CameraViewModel());
    return Scaffold(
        body: Obx(() => _cameraViewModel.Isloading.value
            ? Center(
                child: CircularProgressIndicator(
                  color: ColorManager.primaryColor,
                ),
              )
            : CameraScreenContent(_cameraViewModel, size)));
  }

  Widget CameraScreenContent(CameraViewModel cameraViewModel, Size size) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Image.asset(
          AssetsManger.animalVector,
        ),
        Container(
          height: size.height * .6,
          width: double.infinity,
          decoration: BoxDecoration(
              color: ColorManager.TexttextFormFiledColor,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(AssetsManger.vector2),
                  const SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                    height: 200,
                    width: 200,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(70)),
                      child: GetBuilder<CameraViewModel>(
                        init: CameraViewModel(),
                        builder: (controller) => AspectRatio(
                          aspectRatio: 1,
                          child: controller.image == null
                              ? CameraPreview(cameraViewModel.controller!)
                              : Image.file(
                                  File(
                                    cameraViewModel.image!.path,
                                  ),
                                  fit: BoxFit.cover),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  SvgPicture.asset(
                    AssetsManger.vector1,
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Click Your Meal',
                style: getRegularStyle(color: Colors.black, fontSize: 24),
              ),
              const SizedBox(
                height: 20,
              ),
              GetBuilder<CameraViewModel>(
                init: CameraViewModel(),
                builder: (controller) => InkWell(
                  onTap: () => controller.image == null
                      ? controller.takeAnPicture()
                      : controller.uplodeImageToFireBase(),
                  child: CircleAvatar(
                    radius: 32,
                    backgroundColor: ColorManager.primaryColor,
                    child: Icon(
                      controller.image == null ? Icons.camera_alt : Icons.done,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
