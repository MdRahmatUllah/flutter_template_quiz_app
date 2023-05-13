import 'package:flutter/material.dart';
import 'package:quiz/core/app_export.dart';
import 'package:quiz/presentation/home_screen_page/home_screen_page.dart';
import 'package:quiz/presentation/profile_screen_page/profile_screen_page.dart';
import 'package:quiz/widgets/app_bar/appbar_image.dart';
import 'package:quiz/widgets/app_bar/appbar_title.dart';
import 'package:quiz/widgets/app_bar/custom_app_bar.dart';
import 'package:quiz/widgets/custom_bottom_bar.dart';
import 'package:quiz/widgets/custom_button.dart';

// ignore_for_file: must_be_immutable
class TheoryScreenTwoScreen extends StatelessWidget {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(57),
                leadingWidth: 29,
                leading: AppbarImage(
                    height: getVerticalSize(13),
                    width: getHorizontalSize(10),
                    svgPath: ImageConstant.imgArrowleftBlack900,
                    margin: getMargin(left: 19, top: 20, bottom: 22),
                    onTap: () {
                      onTapArrowleft8(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "Brief History of Python")),
            body: Container(
                width: getHorizontalSize(356),
                margin: getMargin(left: 16, top: 8, right: 17),
                padding: getPadding(top: 13, bottom: 13),
                decoration: AppDecoration.outlineBlack9000a
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 16, right: 14),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomButton(
                                    height: getVerticalSize(23),
                                    width: getHorizontalSize(60),
                                    text: "BASIC",
                                    shape: ButtonShape.RoundedBorder11,
                                    fontStyle:
                                        ButtonFontStyle.RobotoRomanMedium10),
                                CustomButton(
                                    height: getVerticalSize(23),
                                    width: getHorizontalSize(60),
                                    text: "12.4K",
                                    variant: ButtonVariant.OutlineGray700,
                                    shape: ButtonShape.RoundedBorder11,
                                    padding: ButtonPadding.PaddingT5,
                                    fontStyle: ButtonFontStyle
                                        .RobotoRomanMedium10Gray700,
                                    prefixWidget: Container(
                                        margin: getMargin(right: 2),
                                        child: CustomImageView(
                                            svgPath: ImageConstant.imgEye)))
                              ])),
                      Container(
                          width: getHorizontalSize(326),
                          margin: getMargin(left: 16, top: 14, right: 14),
                          child: Text(
                              "Python is a widely-used, interpreted, object-oriented, and high-level programming language with dynamic semantics, used for general-purpose programming. It’s everywhere, and people use numerous Python-powered devices on a daily basis, whether they realize it or not",
                              maxLines: null,
                              textAlign: TextAlign.justify,
                              style: AppStyle.txtRobotoRegular14.copyWith(
                                  letterSpacing: getHorizontalSize(0.04)))),
                      Container(
                          margin: getMargin(left: 16, top: 18, right: 14),
                          padding: getPadding(
                              left: 8, top: 10, right: 8, bottom: 10),
                          decoration: AppDecoration.outlineBlack90019.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder7),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(left: 8),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 5),
                                              child: Text("x = 5",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoRegular14Black900
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.04)))),
                                          CustomImageView(
                                              svgPath: ImageConstant.imgFolder,
                                              height: getSize(11),
                                              width: getSize(11),
                                              margin: getMargin(bottom: 11))
                                        ])),
                                Padding(
                                    padding: getPadding(left: 8, top: 1),
                                    child: Text("y = \"John\"",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtRobotoRegular14Black900
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.04)))),
                                Padding(
                                    padding: getPadding(left: 8, top: 1),
                                    child: Text("print(x)",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtRobotoRegular14Black900
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.04)))),
                                Padding(
                                    padding: getPadding(left: 8, bottom: 7),
                                    child: Text("print(y)",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtRobotoRegular14Black900
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.04))))
                              ])),
                      Container(
                          width: getHorizontalSize(326),
                          margin: getMargin(left: 16, top: 19, right: 14),
                          child: Text(
                              "Indentation refers to the spaces at the beginning of a code line. Where in other programming languages the indentation in code is for readability only, the indentation in Python is very important. Python uses indentation to indicate a block of code.",
                              maxLines: null,
                              textAlign: TextAlign.justify,
                              style: AppStyle.txtRobotoRegular14.copyWith(
                                  letterSpacing: getHorizontalSize(0.04)))),
                      Container(
                          margin: getMargin(left: 13, top: 17, right: 14),
                          padding: getPadding(
                              left: 8, top: 10, right: 8, bottom: 10),
                          decoration: AppDecoration.outlineBlack90019.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder7),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(left: 8),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 4),
                                              child: Text("if 5 > 2:",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoRegular14Black900
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.04)))),
                                          CustomImageView(
                                              svgPath: ImageConstant.imgFolder,
                                              height: getSize(11),
                                              width: getSize(11),
                                              margin: getMargin(bottom: 10))
                                        ])),
                                Padding(
                                    padding:
                                        getPadding(left: 8, top: 2, bottom: 13),
                                    child: Text(
                                        "print(\"Five is greater than two!\")",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtRobotoRegular14Black900
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.04))))
                              ])),
                      Container(
                          width: getHorizontalSize(326),
                          margin: getMargin(left: 16, top: 19, right: 14),
                          child: Text(
                              "Variables do not need to be declared with any particular type, and can even change type after they have been set.",
                              maxLines: null,
                              textAlign: TextAlign.justify,
                              style: AppStyle.txtRobotoRegular14.copyWith(
                                  letterSpacing: getHorizontalSize(0.04)))),
                      Container(
                          height: getVerticalSize(131),
                          width: getHorizontalSize(340),
                          margin: getMargin(top: 10, bottom: 5),
                          child: Stack(alignment: Alignment.topLeft, children: [
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                    width: getHorizontalSize(326),
                                    child: Text(
                                        "Variables do not need to be declared with any particular type, and can even change type after they have been set.",
                                        maxLines: null,
                                        textAlign: TextAlign.justify,
                                        style: AppStyle.txtRobotoRegular14
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.04))))),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                    padding: getPadding(
                                        left: 17,
                                        top: 11,
                                        right: 17,
                                        bottom: 11),
                                    decoration: AppDecoration.outlineBlack90019
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder7),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 4),
                                              child: Text(
                                                  "x = 4 # x is of type int",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoRegular14Black900
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.04)))),
                                          Text(
                                              "x = \"Sally\" # x is now of type str",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRobotoRegular14Black900
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.04)))
                                        ]))),
                            CustomButton(
                                height: getVerticalSize(41),
                                width: getHorizontalSize(156),
                                text: "Practice More",
                                margin: getMargin(top: 42),
                                variant: ButtonVariant.OutlineIndigo90021,
                                shape: ButtonShape.RoundedBorder20,
                                padding: ButtonPadding.PaddingT12,
                                fontStyle: ButtonFontStyle.RobotoRegular14,
                                prefixWidget: Container(
                                    margin: getMargin(right: 11),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.whiteA700),
                                    child: CustomImageView(
                                        svgPath:
                                            ImageConstant.imgVolumeWhiteA700)),
                                alignment: Alignment.topRight)
                          ]))
                    ])),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Navigator.pushNamed(
                  navigatorKey.currentContext!, getCurrentRoute(type));
            })));
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Vectorgray500:
        return AppRoutes.profileScreenPage;
      case BottomBarEnum.Group291:
        return "/";
      case BottomBarEnum.Group292:
        return AppRoutes.homeScreenPage;
      case BottomBarEnum.Group27:
        return "/";
      case BottomBarEnum.Grouplightblue500:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.profileScreenPage:
        return ProfileScreenPage();
      case AppRoutes.homeScreenPage:
        return HomeScreenPage();
      default:
        return DefaultWidget();
    }
  }

  onTapArrowleft8(BuildContext context) {
    Navigator.pop(context);
  }
}
