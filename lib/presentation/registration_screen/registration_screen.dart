import 'controller/registration_controller.dart';
import 'package:flexyatra/core/app_export.dart';
import 'package:flexyatra/core/utils/validation_functions.dart';
import 'package:flexyatra/widgets/custom_elevated_button.dart';
import 'package:flexyatra/widgets/custom_outlined_button.dart';
import 'package:flexyatra/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class RegistrationScreen extends GetWidget<RegistrationController> {
  RegistrationScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: 415.h,
            child: SingleChildScrollView(
              child: SizedBox(
                height: 922.v,
                width: 415.h,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 33.h,
                          right: 25.h,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.img91369371,
                              height: 86.adaptSize,
                              width: 86.adaptSize,
                              radius: BorderRadius.circular(
                                43.h,
                              ),
                            ),
                            SizedBox(height: 10.v),
                            Container(
                              decoration: AppDecoration.outlineBlack900,
                              child: Text(
                                "lbl_registration".tr,
                                style: theme.textTheme.displayMedium,
                              ),
                            ),
                            SizedBox(height: 590.v),
                            Text(
                              "msg_journey_to_wellness".tr,
                              style: CustomTextStyles.bodyMediumRegular,
                            ),
                            SizedBox(height: 9.v),
                            SizedBox(
                              height: 10.v,
                              child: AnimatedSmoothIndicator(
                                activeIndex: 0,
                                count: 4,
                                effect: ScrollingDotsEffect(
                                  spacing: 4,
                                  activeDotColor: appTheme.red700,
                                  dotColor: appTheme.gray400,
                                  dotHeight: 10.v,
                                  dotWidth: 10.h,
                                ),
                              ),
                            ),
                            SizedBox(height: 10.v),
                            _buildSignUp(),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 56.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 52.v),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 2.h,
                                right: 16.h,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  _buildFirstName(),
                                  _buildLastName(),
                                ],
                              ),
                            ),
                            SizedBox(height: 15.v),
                            _buildPassword(),
                            SizedBox(height: 14.v),
                            _buildEmail(),
                            SizedBox(height: 16.v),
                            _buildAddress(),
                            SizedBox(height: 18.v),
                            _buildContactNo(),
                            SizedBox(height: 19.v),
                            Container(
                              width: 285.h,
                              margin: EdgeInsets.only(left: 2.h),
                              padding: EdgeInsets.symmetric(
                                horizontal: 12.h,
                                vertical: 4.v,
                              ),
                              decoration:
                                  AppDecoration.outlineBlack9001.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder10,
                              ),
                              child: Text(
                                "lbl_date_of_birth".tr,
                                style: theme.textTheme.titleMedium,
                              ),
                            ),
                            SizedBox(height: 18.v),
                            Container(
                              margin: EdgeInsets.only(
                                left: 2.h,
                                right: 16.h,
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: 12.h,
                                vertical: 2.v,
                              ),
                              decoration:
                                  AppDecoration.outlineBlack9001.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder10,
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Opacity(
                                    opacity: 0.5,
                                    child: Padding(
                                      padding: EdgeInsets.only(top: 5.v),
                                      child: Text(
                                        "lbl_complications".tr,
                                        style: theme.textTheme.titleMedium,
                                      ),
                                    ),
                                  ),
                                  Opacity(
                                    opacity: 0.7,
                                    child: CustomImageView(
                                      imagePath: ImageConstant.imgLocation,
                                      height: 11.v,
                                      width: 14.h,
                                      margin: EdgeInsets.only(
                                        left: 12.h,
                                        top: 10.v,
                                        bottom: 7.v,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 16.v),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 2.h,
                                right: 16.h,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 20.h),
                                    child: _buildTen(
                                      weight: "lbl_height".tr,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 20.h),
                                    child: _buildTen(
                                      weight: "lbl_weight".tr,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 16.v),
                            _buildTen(
                              weight: "lbl_gender".tr,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSignUp() {
    return CustomOutlinedButton(
      width: 188.h,
      text: "lbl_sign_up".tr,
    );
  }

  /// Section Widget
  Widget _buildFirstName() {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(right: 21.h),
        child: CustomTextFormField(
          controller: controller.firstNameController,
          hintText: "lbl_first_name".tr,
          validator: (value) {
            if (!isText(value)) {
              return "err_msg_please_enter_valid_text".tr;
            }
            return null;
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLastName() {
    return Expanded(
      child: CustomElevatedButton(
        text: "lbl_last_name".tr,
        margin: EdgeInsets.only(left: 21.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildPassword() {
    return Padding(
      padding: EdgeInsets.only(
        left: 2.h,
        right: 16.h,
      ),
      child: CustomTextFormField(
        controller: controller.passwordController,
        hintText: "lbl_password".tr,
        textInputType: TextInputType.visiblePassword,
        validator: (value) {
          if (value == null || (!isValidPassword(value, isRequired: true))) {
            return "err_msg_please_enter_valid_password".tr;
          }
          return null;
        },
        obscureText: true,
      ),
    );
  }

  /// Section Widget
  Widget _buildEmail() {
    return Padding(
      padding: EdgeInsets.only(
        left: 2.h,
        right: 16.h,
      ),
      child: CustomTextFormField(
        controller: controller.emailController,
        hintText: "lbl_email".tr,
        textInputType: TextInputType.emailAddress,
        validator: (value) {
          if (value == null || (!isValidEmail(value, isRequired: true))) {
            return "err_msg_please_enter_valid_email".tr;
          }
          return null;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildAddress() {
    return Padding(
      padding: EdgeInsets.only(
        left: 2.h,
        right: 16.h,
      ),
      child: CustomTextFormField(
        controller: controller.addressController,
        hintText: "lbl_address".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildContactNo() {
    return Padding(
      padding: EdgeInsets.only(right: 16.h),
      child: CustomTextFormField(
        controller: controller.contactNoController,
        hintText: "lbl_contact_no".tr,
        textInputAction: TextInputAction.done,
      ),
    );
  }

  /// Common widget
  Widget _buildTen({required String weight}) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 14.h,
          vertical: 1.v,
        ),
        decoration: AppDecoration.outlineBlack9001.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Opacity(
              opacity: 0.5,
              child: Padding(
                padding: EdgeInsets.only(top: 7.v),
                child: Text(
                  weight,
                  style: theme.textTheme.titleMedium!.copyWith(
                    color: appTheme.black900.withOpacity(0.53),
                  ),
                ),
              ),
            ),
            Opacity(
              opacity: 0.7,
              child: CustomImageView(
                imagePath: ImageConstant.imgLocation,
                height: 11.v,
                width: 14.h,
                margin: EdgeInsets.only(
                  left: 8.h,
                  top: 13.v,
                  bottom: 6.v,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
