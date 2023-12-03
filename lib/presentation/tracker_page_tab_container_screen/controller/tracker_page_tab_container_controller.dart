import 'package:flexyatra/core/app_export.dart';
import 'package:flexyatra/presentation/tracker_page_tab_container_screen/models/tracker_page_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the TrackerPageTabContainerScreen.
///
/// This class manages the state of the TrackerPageTabContainerScreen, including the
/// current trackerPageTabContainerModelObj
class TrackerPageTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<TrackerPageTabContainerModel> trackerPageTabContainerModelObj =
      TrackerPageTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 5));

  SelectionPopupModel? selectedDropDownValue;

  onSelected(dynamic value) {
    for (var element
        in trackerPageTabContainerModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    trackerPageTabContainerModelObj.value.dropdownItemList.refresh();
  }
}
