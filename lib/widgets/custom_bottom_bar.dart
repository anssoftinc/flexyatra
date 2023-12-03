import 'package:flexyatra/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomBottomBar extends StatelessWidget {
  CustomBottomBar({
    Key? key,
    this.onChanged,
  }) : super(
          key: key,
        );

  RxInt selectedIndex = 0.obs;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgHome,
      activeIcon: ImageConstant.imgHome,
      type: BottomBarEnum.Home,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgTwitter,
      activeIcon: ImageConstant.imgTwitter,
      type: BottomBarEnum.Twitter,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgMealPlanWhiteA700,
      activeIcon: ImageConstant.imgMealPlanWhiteA700,
      type: BottomBarEnum.Mealplanwhitea700,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgTracker,
      activeIcon: ImageConstant.imgTracker,
      type: BottomBarEnum.Tracker,
    )
  ];

  Function(BottomBarEnum)? onChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.v,
      child: Obx(
        () => BottomNavigationBar(
          backgroundColor: Colors.transparent,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedFontSize: 0,
          elevation: 0,
          currentIndex: selectedIndex.value,
          type: BottomNavigationBarType.fixed,
          items: List.generate(bottomMenuList.length, (index) {
            return BottomNavigationBarItem(
              icon: CustomImageView(
                imagePath: bottomMenuList[index].icon,
                height: 25.adaptSize,
                width: 25.adaptSize,
                color: appTheme.black900,
              ),
              activeIcon: Container(
                decoration: AppDecoration.fillRed.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder25,
                ),
                child: CustomImageView(
                  imagePath: bottomMenuList[index].activeIcon,
                  height: 25.adaptSize,
                  width: 25.adaptSize,
                  color: appTheme.whiteA700,
                  margin: EdgeInsets.only(
                    top: 11.v,
                    bottom: 14.v,
                  ),
                ),
              ),
              label: '',
            );
          }),
          onTap: (index) {
            selectedIndex.value = index;
            onChanged?.call(bottomMenuList[index].type);
          },
        ),
      ),
    );
  }
}

enum BottomBarEnum {
  Home,
  Twitter,
  Mealplanwhitea700,
  Tracker,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    required this.type,
  });

  String icon;

  String activeIcon;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
