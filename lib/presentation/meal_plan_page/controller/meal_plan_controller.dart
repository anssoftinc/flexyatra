import 'package:flexyatra/core/app_export.dart';
import 'package:flexyatra/presentation/meal_plan_page/models/meal_plan_model.dart';

/// A controller class for the MealPlanPage.
///
/// This class manages the state of the MealPlanPage, including the
/// current mealPlanModelObj
class MealPlanController extends GetxController {
  MealPlanController(this.mealPlanModelObj);

  Rx<MealPlanModel> mealPlanModelObj;
}
