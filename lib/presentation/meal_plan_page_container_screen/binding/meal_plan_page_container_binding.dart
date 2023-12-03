import '../controller/meal_plan_page_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MealPlanPageContainerScreen.
///
/// This class ensures that the MealPlanPageContainerController is created when the
/// MealPlanPageContainerScreen is first loaded.
class MealPlanPageContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MealPlanPageContainerController());
  }
}
