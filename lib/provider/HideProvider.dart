import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';

import '../views/gallery_screen.dart';

class HideProvider extends ChangeNotifier {
  // functionality - function - process - method
  bool status = false;

  Future<void> authenticateUser(BuildContext context) async {
    LocalAuthentication auth = LocalAuthentication();
    bool canAuthenticate =
        await auth.canCheckBiometrics || await auth.isDeviceSupported();
    if (canAuthenticate) {
      status = await auth.authenticate(
          localizedReason: "To Open Gallery, first verify its You!");
      notifyListeners();
    }

    if (status) {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const GalleryScreen(),
      ));
    }
  }
}
