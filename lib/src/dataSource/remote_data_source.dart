import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';

class FireBaseServieces {
  static Future<Either<Exception, void>> uploadProfileImage(
      File profileImage) async {
    await login();
    try {
      var result = FirebaseStorage.instance
          .ref()
          .child('users/${Uri.file(profileImage.path).pathSegments.last}')
          .putFile(profileImage);
      return const Right(Null);
    } catch (e) {
      return Left(Exception(e));
    }
  }

  static Future<void> login() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: 'alwgeh22@gmail.com', password: '123456789');
  }
}
