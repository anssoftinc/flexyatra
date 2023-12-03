import 'controller/meal_plan_page_container_controller.dart';
import 'package:flexyatra/core/app_export.dart';
import 'package:flexyatra/presentation/meal_plan_page/meal_plan_page.dart';
import 'package:flexyatra/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class MealPlanPageContainerScreen
    extends GetWidget<MealPlanPageContainerController> {
  const MealPlanPageContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                padding: EdgeInsets.only(bottom: 50.v),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: fs.Svg(ImageConstant.imgGroup50),
                        fit: BoxFit.cover)),
                child: Navigator(
                    key: Get.nestedKey(1),
                    initialRoute: AppRoutes.mealPlanPage,
                    onGenerateRoute: (routeSetting) => GetPageRoute(
                        page: () => getCurrentPage(routeSetting.name!),
                        transition: Transition.noTransition))),
            bottomNavigationBar: Padding(
                padding: EdgeInsets.only(left: 75.h, right: 62.h),
                child: _buildBottomBar())));
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Get.toNamed(getCurrentRoute(type), id: 1);
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return "/";
      case BottomBarEnum.Twitter:
        return "/";
      case BottomBarEnum.Mealplanwhitea700:
        return AppRoutes.mealPlanPage;
      case BottomBarEnum.Tracker:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.mealPlanPage:
        return MealPlanPage();
      default:
        return DefaultWidget();
    }
  }
}
