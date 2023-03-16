import 'dart:io';

import 'package:alemeno_assigment/src/view/endScreen/endScreen.dart';
import 'package:camera/camera.dart';
import 'package:get/get.dart';

import '../../dataSource/remote_data_source.dart';

class CameraViewModel extends GetxController {
  @override
  Future<void> onInit() async {
    await initialCamera();

    super.onInit();
  }

  List<CameraDescription>? cameras; //list out the camera available
  CameraController? controller; //controller for camera
  XFile? image;
  RxBool Isloading = false.obs;

  Future<void> initialCamera() async {
    Isloading.value = true;
    cameras = await availableCameras();
    if (cameras != null) {
      controller = CameraController(cameras![0], ResolutionPreset.max);
      //cameras[0] = first camera, change to 1 to another camera

      await controller!.initialize();
      Isloading.value = false;
    } else {
      print("NO any camera found");
    }
  }

  void takeAnPicture() async {
    image = await controller!.takePicture();

    update();
  }

  void uplodeImageToFireBase() {
    File fileImage = File(image!.path);
    FireBaseServieces.uploadProfileImage(fileImage)
        .then((value) => value.fold((faluer) => faluer.printError(), (data) {
              Get.to(() => const EndScreen(),
                  transition: Transition.leftToRight);
              Get.snackbar(
                'thanks',
                'Thank you for sharing food with me',
              );
            }));
    update();
  }
}
