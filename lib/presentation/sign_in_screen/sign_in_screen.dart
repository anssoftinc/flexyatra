import 'controller/sign_in_controller.dart';
import 'package:flexyatra/core/app_export.dart';
import 'package:flexyatra/core/utils/validation_functions.dart';
import 'package:flexyatra/widgets/custom_outlined_button.dart';
import 'package:flexyatra/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class SignInScreen extends GetWidget<SignInController> {
  SignInScreen({Key? key})
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
              child: _buildSignIn(),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLogin() {
    return CustomOutlinedButton(
      text: "lbl_login2".tr,
      buttonStyle: CustomButtonStyles.outlineBlackTL20,
    );
  }

  /// Section Widget
  Widget _buildSignUp() {
    return CustomOutlinedButton(
      text: "lbl_sign_up".tr,
    );
  }

  /// Section Widget
  Widget _buildUserName() {
    return Padding(
      padding: EdgeInsets.only(left: 14.h),
      child: CustomTextFormField(
        controller: controller.userNameController,
        hintText: "msg_user_name_email".tr,
        hintStyle: CustomTextStyles.titleMedium17,
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
  Widget _buildPassword() {
    return Padding(
      padding: EdgeInsets.only(left: 14.h),
      child: Obx(
        () => CustomTextFormField(
          controller: controller.passwordController,
          hintText: "lbl_password".tr,
          hintStyle: CustomTextStyles.titleMedium17,
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.visiblePassword,
          suffix: InkWell(
            onTap: () {
              controller.isShowPassword.value =
                  !controller.isShowPassword.value;
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(30.h, 9.v, 24.h, 10.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgFullm2i8a0z5d3a0h7g61,
                height: 15.v,
                width: 21.h,
              ),
            ),
          ),
          suffixConstraints: BoxConstraints(
            maxHeight: 34.v,
          ),
          validator: (value) {
            if (value == null || (!isValidPassword(value, isRequired: true))) {
              return "err_msg_please_enter_valid_password".tr;
            }
            return null;
          },
          obscureText: controller.isShowPassword.value,
          contentPadding: EdgeInsets.only(
            left: 12.h,
            top: 4.v,
            bottom: 4.v,
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSignIn() {
    return SizedBox(
      height: 8.v,
      width: 415.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(
                left: 117.h,
                top: 10.v,
                right: 110.h,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.img91369371,
                    height: 86.adaptSize,
                    width: 86.adaptSize,
                    radius: BorderRadius.circular(
                      43.h,
                    ),
                    margin: EdgeInsets.only(left: 47.h),
                  ),
                  SizedBox(height: 14.v),
                  Padding(
                    padding: EdgeInsets.only(left: 15.h),
                    child: Text(
                      "lbl_login".tr,
                      style: theme.textTheme.displayMedium,
                    ),
                  ),
                  SizedBox(height: 420.v),
                  _buildLogin(),
                  SizedBox(height: 19.v),
                  _buildSignUp(),
                  SizedBox(height: 28.v),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.only(left: 5.h),
                      child: Text(
                        "msg_journey_to_wellness".tr,
                        style: CustomTextStyles.bodyMediumRegular,
                      ),
                    ),
                  ),
                  SizedBox(height: 22.v),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 13.v,
                      margin: EdgeInsets.only(left: 60.h),
                      child: AnimatedSmoothIndicator(
                        activeIndex: 0,
                        count: 4,
                        effect: ScrollingDotsEffect(
                          spacing: 8,
                          activeDotColor: appTheme.red700,
                          dotColor: appTheme.gray400,
                          dotHeight: 10.v,
                          dotWidth: 10.h,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: EdgeInsets.only(
                left: 58.h,
                right: 58.h,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgUserAvatarPng,
                    height: 206.v,
                    width: 279.h,
                  ),
                  SizedBox(height: 23.v),
                  _buildUserName(),
                  SizedBox(height: 23.v),
                  _buildPassword(),
                  SizedBox(height: 23.v),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
