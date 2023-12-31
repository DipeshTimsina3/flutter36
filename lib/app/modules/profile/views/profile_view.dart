import 'package:ecom_2/app/routes/app_pages.dart';
import 'package:ecom_2/app/utils/memoryManagement.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(ProfileController());
    // var profileURL = controller.getProfileURL.toString();
    return Scaffold(
        appBar: AppBar(
          title: const Text('ProfileView'),
          centerTitle: true,
        ),
        body: Center(
          child: ElevatedButton(
              onPressed: () {
                MemoryManagement.removeAll();
                Get.offAllNamed(Routes.LOGIN);
              },
              child: const Text('Logout')),
        ));
  }
}
