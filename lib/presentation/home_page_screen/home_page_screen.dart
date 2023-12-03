import 'controller/home_page_controller.dart';
import 'package:flexyatra/core/app_export.dart';
import 'package:flexyatra/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePageScreen extends GetWidget<HomePageController> {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: 415.h,
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  SizedBox(height: 143.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 44.h, right: 53.h, bottom: 73.v),
                              child: Column(children: [
                                RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: "lbl_flex".tr,
                                          style: theme.textTheme.displayLarge),
                                      TextSpan(
                                          text: "lbl_yatra".tr,
                                          style: CustomTextStyles
                                              .displayLargeRed700)
                                    ]),
                                    textAlign: TextAlign.left),
                                SizedBox(height: 60.v),
                                CustomImageView(
                                    imagePath: ImageConstant.img91369371269x269,
                                    height: 269.adaptSize,
                                    width: 269.adaptSize,
                                    radius: BorderRadius.circular(134.h)),
                                SizedBox(height: 73.v),
                                Text("msg_track_your_active".tr,
                                    style: theme.textTheme.headlineSmall),
                                SizedBox(height: 7.v),
                                Text("msg_journey_to_wellness".tr,
                                    style: CustomTextStyles.bodyMediumRegular),
                                SizedBox(height: 33.v),
                                SizedBox(
                                    height: 10.v,
                                    child: AnimatedSmoothIndicator(
                                        activeIndex: 0,
                                        count: 4,
                                        effect: ScrollingDotsEffect(
                                            spacing: 8,
                                            activeDotColor: appTheme.red700,
                                            dotColor: appTheme.gray400,
                                            dotHeight: 10.v,
                                            dotWidth: 10.h))),
                                SizedBox(height: 47.v),
                                CustomElevatedButton(
                                    height: 66.v,
                                    width: 188.h,
                                    text: "lbl_get_started".tr,
                                    margin: EdgeInsets.only(right: 56.h),
                                    buttonStyle: CustomButtonStyles.fillRed,
                                    buttonTextStyle:
                                        CustomTextStyles.titleMediumWhiteA700,
                                    alignment: Alignment.centerRight)
                              ]))))
                ]))));
  }
}
