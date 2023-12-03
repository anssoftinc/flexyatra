import 'package:flexyatra/core/app_export.dart';
import 'package:flexyatra/presentation/registration_screen/models/registration_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the RegistrationScreen.
///
/// This class manages the state of the RegistrationScreen, including the
/// current registrationModelObj
class RegistrationController extends GetxController {
  TextEditingController firstNameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController addressController = TextEditingController();

  TextEditingController contactNoController = TextEditingController();

  Rx<RegistrationModel> registrationModelObj = RegistrationModel().obs;

  @override
  void onClose() {
    super.onClose();
    firstNameController.dispose();
    passwordController.dispose();
    emailController.dispose();
    addressController.dispose();
    contactNoController.dispose();
  }
}
