import 'package:flexyatra/presentation/registration_screen/registration_screen.dart';
import 'package:flexyatra/presentation/registration_screen/binding/registration_binding.dart';
import 'package:flexyatra/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:flexyatra/presentation/sign_in_screen/binding/sign_in_binding.dart';
import 'package:flexyatra/presentation/profile_page_screen/profile_page_screen.dart';
import 'package:flexyatra/presentation/profile_page_screen/binding/profile_page_binding.dart';
import 'package:flexyatra/presentation/meal_plan_page_container_screen/meal_plan_page_container_screen.dart';
import 'package:flexyatra/presentation/meal_plan_page_container_screen/binding/meal_plan_page_container_binding.dart';
import 'package:flexyatra/presentation/tracker_page_tab_container_screen/tracker_page_tab_container_screen.dart';
import 'package:flexyatra/presentation/tracker_page_tab_container_screen/binding/tracker_page_tab_container_binding.dart';
import 'package:flexyatra/presentation/workout_plan_page_screen/workout_plan_page_screen.dart';
import 'package:flexyatra/presentation/workout_plan_page_screen/binding/workout_plan_page_binding.dart';
import 'package:flexyatra/presentation/home_page_screen/home_page_screen.dart';
import 'package:flexyatra/presentation/home_page_screen/binding/home_page_binding.dart';
import 'package:flexyatra/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:flexyatra/presentation/forgot_password_screen/binding/forgot_password_binding.dart';
import 'package:flexyatra/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:flexyatra/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String registrationScreen = '/registration_screen';

  static const String signInScreen = '/sign_in_screen';

  static const String profilePageScreen = '/profile_page_screen';

  static const String mealPlanPage = '/meal_plan_page';

  static const String mealPlanPageContainerScreen =
      '/meal_plan_page_container_screen';

  static const String trackerPage = '/tracker_page';

  static const String trackerPageTabContainerScreen =
      '/tracker_page_tab_container_screen';

  static const String workoutPlanPageScreen = '/workout_plan_page_screen';

  static const String homePageScreen = '/home_page_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: registrationScreen,
      page: () => RegistrationScreen(),
      bindings: [
        RegistrationBinding(),
      ],
    ),
    GetPage(
      name: signInScreen,
      page: () => SignInScreen(),
      bindings: [
        SignInBinding(),
      ],
    ),
    GetPage(
      name: profilePageScreen,
      page: () => ProfilePageScreen(),
      bindings: [
        ProfilePageBinding(),
      ],
    ),
    GetPage(
      name: mealPlanPageContainerScreen,
      page: () => MealPlanPageContainerScreen(),
      bindings: [
        MealPlanPageContainerBinding(),
      ],
    ),
    GetPage(
      name: trackerPageTabContainerScreen,
      page: () => TrackerPageTabContainerScreen(),
      bindings: [
        TrackerPageTabContainerBinding(),
      ],
    ),
    GetPage(
      name: workoutPlanPageScreen,
      page: () => WorkoutPlanPageScreen(),
      bindings: [
        WorkoutPlanPageBinding(),
      ],
    ),
    GetPage(
      name: homePageScreen,
      page: () => HomePageScreen(),
      bindings: [
        HomePageBinding(),
      ],
    ),
    GetPage(
      name: forgotPasswordScreen,
      page: () => ForgotPasswordScreen(),
      bindings: [
        ForgotPasswordBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => HomePageScreen(),
      bindings: [
        HomePageBinding(),
      ],
    )
  ];
}
