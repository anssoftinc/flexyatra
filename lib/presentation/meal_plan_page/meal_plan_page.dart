import 'controller/meal_plan_controller.dart';
import 'models/meal_plan_model.dart';
import 'package:flexyatra/core/app_export.dart';
import 'package:flexyatra/widgets/app_bar/appbar_leading_image.dart';
import 'package:flexyatra/widgets/app_bar/appbar_trailing_image.dart';
import 'package:flexyatra/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

// ignore_for_file: must_be_immutable
class MealPlanPage extends StatelessWidget {
  MealPlanPage({Key? key}) : super(key: key);

  MealPlanController controller =
      Get.put(MealPlanController(MealPlanModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            backgroundColor: Colors.transparent,
            appBar: _buildAppBar(),
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                padding: EdgeInsets.only(top: 38.v),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: fs.Svg(ImageConstant.imgGroup50),
                        fit: BoxFit.cover)),
                child: SingleChildScrollView(
                    child: SizedBox(
                        height: 922.v,
                        width: 415.h,
                        child: Stack(alignment: Alignment.topLeft, children: [
                          Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 20.h, right: 20.h, bottom: 131.v),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                  Opacity(
                                                      opacity: 0.5,
                                                      child: Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: 2.v),
                                                          child: Text(
                                                              "lbl_workout_plans"
                                                                  .tr,
                                                              style: theme
                                                                  .textTheme
                                                                  .bodyLarge))),
                                                  Text("lbl_meal_plans".tr,
                                                      style: CustomTextStyles
                                                          .bodyLargeBlack900)
                                                ]))),
                                        SizedBox(height: 1.v),
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: SizedBox(
                                                width: 85.h,
                                                child: Divider(
                                                    color: appTheme.black900,
                                                    endIndent: 17.h))),
                                        SizedBox(height: 238.v),
                                        Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 80.h),
                                                  child: Text(
                                                      "lbl_non_vegetarian".tr,
                                                      style: CustomTextStyles
                                                          .titleMediumBlack900Medium
                                                          .copyWith(
                                                              decoration:
                                                                  TextDecoration
                                                                      .underline))),
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgImage2,
                                                  height: 14.v,
                                                  width: 12.h,
                                                  margin: EdgeInsets.only(
                                                      left: 47.h, bottom: 12.v))
                                            ]),
                                        SizedBox(height: 245.v),
                                        Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 110.h),
                                                  child: Text(
                                                      "lbl_vegetarian".tr,
                                                      style: CustomTextStyles
                                                          .titleMediumBlack900Medium
                                                          .copyWith(
                                                              decoration:
                                                                  TextDecoration
                                                                      .underline))),
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgImage2,
                                                  height: 14.v,
                                                  width: 12.h,
                                                  margin: EdgeInsets.only(
                                                      left: 84.h,
                                                      top: 3.v,
                                                      bottom: 9.v))
                                            ])
                                      ]))),
                          Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 40.h, top: 50.v),
                                  child: Text("lbl_find_your".tr,
                                      style: CustomTextStyles
                                          .displayMediumLight))),
                          Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 39.h, top: 102.v),
                                  child: Text("lbl_activity".tr,
                                      style: CustomTextStyles
                                          .displayMediumRed700))),
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                  padding: EdgeInsets.fromLTRB(
                                      42.h, 150.v, 42.h, 165.v),
                                  decoration: AppDecoration.outlineBlack
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder60),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Opacity(
                                            opacity: 0.5,
                                            child: Text("lbl_tracker".tr,
                                                style:
                                                    theme.textTheme.bodyLarge)),
                                        SizedBox(height: 28.v),
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgGreenAndCream,
                                            height: 203.v,
                                            width: 323.h,
                                            radius:
                                                BorderRadius.circular(30.h)),
                                        SizedBox(height: 67.v),
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.img96451861,
                                            height: 203.v,
                                            width: 323.h,
                                            radius: BorderRadius.circular(30.h))
                                      ])))
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 69.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 31.h),
            onTap: () {
              onTapArrowLeft();
            }),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgMenu,
              margin: EdgeInsets.only(left: 49.h, top: 3.v, right: 49.h))
        ]);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
