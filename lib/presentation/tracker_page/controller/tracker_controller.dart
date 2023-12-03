import 'package:flexyatra/core/app_export.dart';
import 'package:flexyatra/presentation/tracker_page/models/tracker_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the TrackerPage.
///
/// This class manages the state of the TrackerPage, including the
/// current trackerModelObj
class TrackerController extends GetxController {
  TrackerController(this.trackerModelObj);

  TextEditingController weekController = TextEditingController();

  Rx<TrackerModel> trackerModelObj;

  @override
  void onClose() {
    super.onClose();
    weekController.dispose();
  }
}
