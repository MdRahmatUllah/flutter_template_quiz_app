import '../quiz_screen/widgets/quiz_screen_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:quiz/core/app_export.dart';
import 'package:quiz/presentation/home_screen_page/home_screen_page.dart';
import 'package:quiz/presentation/profile_screen_page/profile_screen_page.dart';
import 'package:quiz/widgets/app_bar/appbar_image.dart';
import 'package:quiz/widgets/app_bar/appbar_title.dart';
import 'package:quiz/widgets/app_bar/custom_app_bar.dart';
import 'package:quiz/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class QuizScreen extends StatelessWidget {
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
                      onTapArrowleft5(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "Introduction to Python")),
            body: Padding(
                padding: getPadding(top: 10),
                child: ListView.separated(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: getVerticalSize(8));
                    },
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return QuizScreenItemWidget();
                    })),
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

  onTapArrowleft5(BuildContext context) {
    Navigator.pop(context);
  }
}
