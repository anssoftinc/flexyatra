import '../controller/workout_plan_page_controller.dart';
import 'package:get/get.dart';

/// A binding class for the WorkoutPlanPageScreen.
///
/// This class ensures that the WorkoutPlanPageController is created when the
/// WorkoutPlanPageScreen is first loaded.
class WorkoutPlanPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WorkoutPlanPageController());
  }
}
