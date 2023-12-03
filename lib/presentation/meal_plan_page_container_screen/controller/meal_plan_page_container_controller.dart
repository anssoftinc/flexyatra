import 'package:flexyatra/core/app_export.dart';
import 'package:flexyatra/presentation/meal_plan_page_container_screen/models/meal_plan_page_container_model.dart';

/// A controller class for the MealPlanPageContainerScreen.
///
/// This class manages the state of the MealPlanPageContainerScreen, including the
/// current mealPlanPageContainerModelObj
class MealPlanPageContainerController extends GetxController {
  Rx<MealPlanPageContainerModel> mealPlanPageContainerModelObj =
      MealPlanPageContainerModel().obs;
}
