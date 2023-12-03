import 'package:flexyatra/core/app_export.dart';
import 'package:flexyatra/presentation/workout_plan_page_screen/models/workout_plan_page_model.dart';

/// A controller class for the WorkoutPlanPageScreen.
///
/// This class manages the state of the WorkoutPlanPageScreen, including the
/// current workoutPlanPageModelObj
class WorkoutPlanPageController extends GetxController {
  Rx<WorkoutPlanPageModel> workoutPlanPageModelObj = WorkoutPlanPageModel().obs;
}
