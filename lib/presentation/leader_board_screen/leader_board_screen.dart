import '../leader_board_screen/widgets/leader_board_item_widget.dart';
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
class LeaderBoardScreen extends StatelessWidget {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(54),
                leadingWidth: 29,
                leading: AppbarImage(
                    height: getVerticalSize(13),
                    width: getHorizontalSize(10),
                    svgPath: ImageConstant.imgArrowleftBlack900,
                    margin: getMargin(left: 19, top: 21, bottom: 19),
                    onTap: () {
                      onTapArrowleft2(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "Leader Board")),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 17, top: 18, right: 17, bottom: 18),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomButton(
                                height: getVerticalSize(38),
                                width: getHorizontalSize(179),
                                text: "Global",
                                variant: ButtonVariant.OutlineGray300,
                                shape: ButtonShape.Square,
                                padding: ButtonPadding.PaddingAll9,
                                fontStyle: ButtonFontStyle.RobotoRomanMedium16),
                            CustomButton(
                                height: getVerticalSize(38),
                                width: getHorizontalSize(174),
                                text: "Local",
                                variant: ButtonVariant.OutlineLightblue500,
                                shape: ButtonShape.Square,
                                padding: ButtonPadding.PaddingAll9,
                                fontStyle: ButtonFontStyle
                                    .RobotoRomanMedium16Lightblue500)
                          ]),
                      Padding(
                          padding: getPadding(left: 1, top: 22, right: 1),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgCifbd,
                                    height: getVerticalSize(11),
                                    width: getHorizontalSize(17),
                                    margin: getMargin(top: 1, bottom: 4)),
                                Padding(
                                    padding: getPadding(left: 5),
                                    child: Text("Bangladesh",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtRobotoRegular14Black900
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.04)))),
                                Padding(
                                    padding:
                                        getPadding(left: 12, top: 1, bottom: 3),
                                    child: Text("CHANGE",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtRobotoMedium10Indigo900
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.15)))),
                                Spacer(),
                                Text("Python",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRobotoRegular14Black900
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.04))),
                                Padding(
                                    padding:
                                        getPadding(left: 12, top: 1, bottom: 3),
                                    child: Text("CHANGE",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtRobotoMedium10Indigo900
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.15))))
                              ])),
                      Container(
                          height: getVerticalSize(321),
                          width: getHorizontalSize(352),
                          margin: getMargin(top: 19, bottom: 5),
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                        decoration: AppDecoration
                                            .outlineBlack9001e
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder4),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                  height: getVerticalSize(160),
                                                  width: getHorizontalSize(351),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.center,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .topCenter,
                                                            child: Container(
                                                                margin:
                                                                    getMargin(
                                                                        bottom:
                                                                            107),
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            13,
                                                                        top: 8,
                                                                        right:
                                                                            13,
                                                                        bottom:
                                                                            8),
                                                                decoration: AppDecoration
                                                                    .fillGray400
                                                                    .copyWith(
                                                                        borderRadius:
                                                                            BorderRadiusStyle
                                                                                .customBorderTL4),
                                                                child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  4,
                                                                              top:
                                                                                  8,
                                                                              bottom:
                                                                                  10),
                                                                          child: Text(
                                                                              "1.",
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtRobotoMedium14Black900.copyWith(letterSpacing: getHorizontalSize(0.01)))),
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgEllipse5036x36,
                                                                          height: getSize(
                                                                              36),
                                                                          width: getSize(
                                                                              36),
                                                                          radius: BorderRadius.circular(getHorizontalSize(
                                                                              18)),
                                                                          margin:
                                                                              getMargin(left: 13)),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  23,
                                                                              top:
                                                                                  8,
                                                                              bottom:
                                                                                  11),
                                                                          child: Text(
                                                                              "Jared Dunn",
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtRobotoRegular14Black900.copyWith(letterSpacing: getHorizontalSize(0.04)))),
                                                                      Spacer(),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              top:
                                                                                  10,
                                                                              bottom:
                                                                                  9),
                                                                          child: Text(
                                                                              "9.9 points",
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtRobotoRegular14Black900.copyWith(letterSpacing: getHorizontalSize(0.04))))
                                                                    ]))),
                                                        Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Container(
                                                                margin:
                                                                    getMargin(
                                                                        top: 53,
                                                                        bottom:
                                                                            53),
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            13,
                                                                        top: 8,
                                                                        right:
                                                                            13,
                                                                        bottom:
                                                                            8),
                                                                decoration:
                                                                    AppDecoration
                                                                        .fillGray300,
                                                                child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  4,
                                                                              top:
                                                                                  9,
                                                                              bottom:
                                                                                  9),
                                                                          child: Text(
                                                                              "2.",
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtRobotoMedium14Black900.copyWith(letterSpacing: getHorizontalSize(0.01)))),
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgEllipse51,
                                                                          height: getSize(
                                                                              36),
                                                                          width: getSize(
                                                                              36),
                                                                          radius: BorderRadius.circular(getHorizontalSize(
                                                                              18)),
                                                                          margin:
                                                                              getMargin(left: 13)),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  23,
                                                                              top:
                                                                                  11,
                                                                              bottom:
                                                                                  8),
                                                                          child: Text(
                                                                              "Gilfoyle",
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtRobotoRegular14Black900.copyWith(letterSpacing: getHorizontalSize(0.04)))),
                                                                      Spacer(),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              top:
                                                                                  11,
                                                                              bottom:
                                                                                  8),
                                                                          child: Text(
                                                                              "9.9 points",
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtRobotoRegular14Black900.copyWith(letterSpacing: getHorizontalSize(0.04))))
                                                                    ]))),
                                                        Align(
                                                            alignment: Alignment
                                                                .bottomCenter,
                                                            child: Container(
                                                                margin:
                                                                    getMargin(
                                                                        top:
                                                                            107),
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            13,
                                                                        top: 8,
                                                                        right:
                                                                            13,
                                                                        bottom:
                                                                            8),
                                                                decoration:
                                                                    AppDecoration
                                                                        .fillGray100,
                                                                child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  4,
                                                                              top:
                                                                                  9,
                                                                              bottom:
                                                                                  9),
                                                                          child: Text(
                                                                              "3.",
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtRobotoMedium14Black900.copyWith(letterSpacing: getHorizontalSize(0.01)))),
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgEllipse52,
                                                                          height: getSize(
                                                                              36),
                                                                          width: getSize(
                                                                              36),
                                                                          radius: BorderRadius.circular(getHorizontalSize(
                                                                              18)),
                                                                          margin:
                                                                              getMargin(left: 13)),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  23,
                                                                              top:
                                                                                  9,
                                                                              bottom:
                                                                                  10),
                                                                          child: Text(
                                                                              "Richards",
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtRobotoRegular14Black900.copyWith(letterSpacing: getHorizontalSize(0.04)))),
                                                                      Spacer(),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              top:
                                                                                  11,
                                                                              bottom:
                                                                                  8),
                                                                          child: Text(
                                                                              "9.9 points",
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtRobotoRegular14Black900.copyWith(letterSpacing: getHorizontalSize(0.04))))
                                                                    ])))
                                                      ])),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 17,
                                                      top: 115,
                                                      right: 10,
                                                      bottom: 8),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 9,
                                                                bottom: 9),
                                                            child: Text("6.",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRobotoMedium14Gray700
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            getHorizontalSize(0.01)))),
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgEllipse53,
                                                            height: getSize(36),
                                                            width: getSize(36),
                                                            radius: BorderRadius
                                                                .circular(
                                                                    getHorizontalSize(
                                                                        18)),
                                                            margin: getMargin(
                                                                left: 13)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 26,
                                                                top: 9,
                                                                bottom: 10),
                                                            child: Text(
                                                                "Erlich",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRobotoRegular14
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            getHorizontalSize(0.04)))),
                                                        Spacer(),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 11,
                                                                bottom: 8),
                                                            child: Text(
                                                                "9.9 points",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRobotoRegular14
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            getHorizontalSize(0.04))))
                                                      ]))
                                            ]))),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Padding(
                                        padding:
                                            getPadding(top: 160, bottom: 53),
                                        child: ListView.builder(
                                            physics: BouncingScrollPhysics(),
                                            shrinkWrap: true,
                                            itemCount: 2,
                                            itemBuilder: (context, index) {
                                              return LeaderBoardItemWidget();
                                            })))
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

  onTapArrowleft2(BuildContext context) {
    Navigator.pop(context);
  }
}
