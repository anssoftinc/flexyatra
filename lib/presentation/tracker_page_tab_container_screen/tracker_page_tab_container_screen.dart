import 'controller/tracker_page_tab_container_controller.dart';
import 'package:flexyatra/core/app_export.dart';
import 'package:flexyatra/presentation/tracker_page/tracker_page.dart';
import 'package:flexyatra/widgets/app_bar/appbar_leading_image.dart';
import 'package:flexyatra/widgets/app_bar/appbar_trailing_image.dart';
import 'package:flexyatra/widgets/app_bar/custom_app_bar.dart';
import 'package:flexyatra/widgets/custom_drop_down.dart';
import 'package:flexyatra/widgets/custom_floating_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class TrackerPageTabContainerScreen
    extends GetWidget<TrackerPageTabContainerController> {
  const TrackerPageTabContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            appBar: _buildAppBar(),
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                padding: EdgeInsets.only(top: 38.v),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60.h),
                    image: DecorationImage(
                        image: fs.Svg(ImageConstant.imgGroup50),
                        fit: BoxFit.cover)),
                child: SingleChildScrollView(
                    child: SizedBox(
                        height: 922.v,
                        width: 415.h,
                        child: Stack(alignment: Alignment.topLeft, children: [
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 45.h, vertical: 223.v),
                                  decoration: AppDecoration.outlineBlack
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder60),
                                  child: Text("lbl_tracker".tr,
                                      style:
                                          CustomTextStyles.bodyLargeBlack900))),
                          Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 40.h, top: 117.v),
                                  child: Text("lbl_find_your".tr,
                                      style: CustomTextStyles
                                          .displayMediumLight))),
                          Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 39.h, top: 169.v),
                                  child: Text("lbl_activity".tr,
                                      style: CustomTextStyles
                                          .displayMediumRed700))),
                          Align(
                              alignment: Alignment.topRight,
                              child: Opacity(
                                  opacity: 0.5,
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          top: 232.v, right: 130.h),
                                      child: Text("lbl_meal_plans".tr,
                                          style: theme.textTheme.bodyLarge)))),
                          Align(
                              alignment: Alignment.topLeft,
                              child: Opacity(
                                  opacity: 0.5,
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          left: 45.h, top: 235.v),
                                      child: Text("lbl_workout_plans".tr,
                                          style: theme.textTheme.bodyLarge)))),
                          Container(
                              height: 55.v,
                              width: 323.h,
                              margin: EdgeInsets.only(top: 256.v, right: 34.h),
                              child: TabBar(
                                  controller: controller.tabviewController,
                                  labelPadding: EdgeInsets.zero,
                                  labelColor: appTheme.red700,
                                  labelStyle: TextStyle(
                                      fontSize: 14.fSize,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400),
                                  unselectedLabelColor:
                                      appTheme.black900.withOpacity(0.53),
                                  unselectedLabelStyle: TextStyle(
                                      fontSize: 14.fSize,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400),
                                  indicatorColor: appTheme.black900,
                                  tabs: [
                                    Tab(child: Text("lbl_april".tr)),
                                    Tab(
                                        child: Opacity(
                                            opacity: 0.5,
                                            child: Text("lbl_may".tr))),
                                    Tab(
                                        child: Opacity(
                                            opacity: 0.5,
                                            child: Text("lbl_june".tr))),
                                    Tab(
                                        child: Opacity(
                                            opacity: 0.5,
                                            child: Text("lbl_july".tr))),
                                    Tab(
                                        child: CustomDropDown(
                                            width: 85.h,
                                            icon: Container(
                                                margin:
                                                    EdgeInsets.only(left: 15.h),
                                                child: CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgArrowdown,
                                                    height: 20.adaptSize,
                                                    width: 20.adaptSize)),
                                            hintText: "lbl_august".tr,
                                            items: controller
                                                .trackerPageTabContainerModelObj
                                                .value
                                                .dropdownItemList!
                                                .value,
                                            onChanged: (value) {
                                              controller.onSelected(value);
                                            }))
                                  ])),
                          Container(
                              margin: EdgeInsets.only(top: 311.v),
                              height: 611.v,
                              child: TabBarView(
                                  controller: controller.tabviewController,
                                  children: [
                                    TrackerPage(),
                                    TrackerPage(),
                                    TrackerPage(),
                                    TrackerPage(),
                                    TrackerPage()
                                  ]))
                        ])))),
            floatingActionButton: _buildFloatingActionButton()));
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

  /// Section Widget
  Widget _buildFloatingActionButton() {
    return CustomFloatingButton(
        height: 50,
        width: 50,
        backgroundColor: appTheme.red700,
        child: CustomImageView(
            imagePath: ImageConstant.imgTrackerWhiteA700,
            height: 25.0.v,
            width: 25.0.h));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
