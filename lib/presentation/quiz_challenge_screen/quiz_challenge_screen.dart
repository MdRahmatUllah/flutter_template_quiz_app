import 'package:flutter/material.dart';
import 'package:quiz/core/app_export.dart';
import 'package:quiz/presentation/home_screen_page/home_screen_page.dart';
import 'package:quiz/presentation/profile_screen_page/profile_screen_page.dart';
import 'package:quiz/widgets/app_bar/appbar_image.dart';
import 'package:quiz/widgets/app_bar/appbar_title.dart';
import 'package:quiz/widgets/app_bar/custom_app_bar.dart';
import 'package:quiz/widgets/custom_bottom_bar.dart';
import 'package:quiz/widgets/custom_button.dart';
import 'package:quiz/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class QuizChallengeScreen extends StatelessWidget {
  TextEditingController group386Controller = TextEditingController();

  TextEditingController group385Controller = TextEditingController();

  TextEditingController group384Controller = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(68),
                leadingWidth: 29,
                leading: AppbarImage(
                    height: getVerticalSize(13),
                    width: getHorizontalSize(10),
                    svgPath: ImageConstant.imgArrowleftBlack900,
                    margin: getMargin(left: 19, top: 20, bottom: 22),
                    onTap: () {
                      onTapArrowleft10(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "Python Challenge")),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, right: 16),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("5/20",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRobotoRomanMedium12.copyWith(
                              letterSpacing: getHorizontalSize(0.05))),
                      Padding(
                          padding: getPadding(top: 10),
                          child: Text("05:43:54",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoMedium10.copyWith(
                                  letterSpacing: getHorizontalSize(0.15)))),
                      Container(
                          width: double.maxFinite,
                          child: Container(
                              margin: getMargin(top: 20),
                              padding: getPadding(top: 13, bottom: 13),
                              decoration: AppDecoration.outlineBlack9000f
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CustomButton(
                                        height: getVerticalSize(23),
                                        width: getHorizontalSize(60),
                                        text: "BASIC",
                                        margin: getMargin(left: 16),
                                        shape: ButtonShape.RoundedBorder11,
                                        fontStyle:
                                            ButtonFontStyle.RobotoRomanMedium10,
                                        alignment: Alignment.centerLeft),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding:
                                                getPadding(left: 16, top: 15),
                                            child: Text(
                                                "What does the following code snippet prints?",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoRegular14Gray800
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.04))))),
                                    Container(
                                        margin: getMargin(
                                            left: 17, top: 14, right: 13),
                                        padding: getPadding(
                                            left: 8,
                                            top: 10,
                                            right: 8,
                                            bottom: 10),
                                        decoration: AppDecoration
                                            .fillBluegray900
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder7),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding: getPadding(left: 8),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 5),
                                                            child: Text("x = 5",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRobotoRegular14WhiteA700
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            getHorizontalSize(0.04)))),
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgComputerWhiteA70011x11,
                                                            height: getSize(11),
                                                            width: getSize(11),
                                                            margin: getMargin(
                                                                bottom: 11))
                                                      ])),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 8, top: 1),
                                                  child: Text("y = \"John\"",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRegular14WhiteA700
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.04)))),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 8, top: 1),
                                                  child: Text("print(x)",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRegular14WhiteA700
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.04)))),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 8, bottom: 7),
                                                  child: Text("print(y)",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRegular14WhiteA700
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.04))))
                                            ])),
                                    Padding(
                                        padding: getPadding(top: 23),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: ColorConstant.indigo90019)),
                                    CustomTextFormField(
                                        focusNode: FocusNode(),
                                        controller: group386Controller,
                                        hintText: "Your answer one",
                                        margin: getMargin(
                                            left: 15, top: 28, right: 14),
                                        variant:
                                            TextFormFieldVariant.FillGray10001,
                                        padding:
                                            TextFormFieldPadding.PaddingAll13,
                                        fontStyle: TextFormFieldFontStyle
                                            .RobotoRegular12),
                                    CustomTextFormField(
                                        focusNode: FocusNode(),
                                        controller: group385Controller,
                                        hintText: "Your answer one",
                                        margin: getMargin(
                                            left: 15, top: 9, right: 14),
                                        variant: TextFormFieldVariant
                                            .FillLightblue500,
                                        padding:
                                            TextFormFieldPadding.PaddingAll13,
                                        fontStyle: TextFormFieldFontStyle
                                            .RobotoRegular12WhiteA700),
                                    CustomTextFormField(
                                        focusNode: FocusNode(),
                                        controller: group384Controller,
                                        hintText: "Your answer one",
                                        margin: getMargin(
                                            left: 14,
                                            top: 6,
                                            right: 15,
                                            bottom: 23),
                                        variant:
                                            TextFormFieldVariant.FillGray10001,
                                        padding:
                                            TextFormFieldPadding.PaddingAll13,
                                        fontStyle: TextFormFieldFontStyle
                                            .RobotoRegular12,
                                        textInputAction: TextInputAction.done)
                                  ]))),
                      Spacer(),
                      Padding(
                          padding: getPadding(bottom: 32),
                          child: Text("Next".toUpperCase(),
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoMedium14Lightblue500
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(0.1))))
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

  onTapArrowleft10(BuildContext context) {
    Navigator.pop(context);
  }
}
