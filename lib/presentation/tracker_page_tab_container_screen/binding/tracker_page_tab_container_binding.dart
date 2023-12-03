import '../controller/tracker_page_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TrackerPageTabContainerScreen.
///
/// This class ensures that the TrackerPageTabContainerController is created when the
/// TrackerPageTabContainerScreen is first loaded.
class TrackerPageTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TrackerPageTabContainerController());
  }
}
