import '../quiz_challenge_screen_three_screen/widgets/listlocation_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:quiz/core/app_export.dart';
import 'package:quiz/presentation/home_screen_page/home_screen_page.dart';
import 'package:quiz/presentation/profile_screen_page/profile_screen_page.dart';
import 'package:quiz/widgets/app_bar/appbar_image.dart';
import 'package:quiz/widgets/app_bar/appbar_title.dart';
import 'package:quiz/widgets/app_bar/custom_app_bar.dart';
import 'package:quiz/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class QuizChallengeScreenThreeScreen extends StatelessWidget {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(68),
                leadingWidth: 29,
                leading: AppbarImage(
                    height: getVerticalSize(13),
                    width: getHorizontalSize(10),
                    svgPath: ImageConstant.imgArrowleftBlack900,
                    margin: getMargin(left: 19, top: 20, bottom: 22),
                    onTap: () {
                      onTapArrowleft11(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "Python Challenge")),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(left: 16, right: 14, bottom: 5),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("5/20",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRobotoRomanMedium12
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.05))),
                              Padding(
                                  padding: getPadding(top: 12),
                                  child: Text("05:43:54",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRobotoMedium10
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.15)))),
                              Container(
                                  height: getVerticalSize(570),
                                  width: getHorizontalSize(359),
                                  margin: getMargin(top: 20),
                                  child: Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                                margin: getMargin(right: 2),
                                                padding: getPadding(
                                                    left: 13,
                                                    top: 26,
                                                    right: 13,
                                                    bottom: 26),
                                                decoration: AppDecoration
                                                    .outlineBlack9000f
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder10),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                          "Choose correct code snippets.",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoRegular14Gray800
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          0.04))),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 51,
                                                              bottom: 5),
                                                          child: ListView
                                                              .separated(
                                                                  physics:
                                                                      NeverScrollableScrollPhysics(),
                                                                  shrinkWrap:
                                                                      true,
                                                                  separatorBuilder:
                                                                      (context,
                                                                          index) {
                                                                    return SizedBox(
                                                                        height:
                                                                            getVerticalSize(8));
                                                                  },
                                                                  itemCount: 4,
                                                                  itemBuilder:
                                                                      (context,
                                                                          index) {
                                                                    return ListlocationItemWidget();
                                                                  }))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.topCenter,
                                            child: Padding(
                                                padding: getPadding(top: 69),
                                                child: SizedBox(
                                                    width:
                                                        getHorizontalSize(356),
                                                    child: Divider(
                                                        height:
                                                            getVerticalSize(1),
                                                        thickness:
                                                            getVerticalSize(1),
                                                        color: ColorConstant
                                                            .indigo90019))))
                                      ])),
                              Padding(
                                  padding: getPadding(top: 119),
                                  child: Text("Next".toUpperCase(),
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtRobotoMedium14Lightblue500
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.1))))
                            ])))),
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

  onTapArrowleft11(BuildContext context) {
    Navigator.pop(context);
  }
}
