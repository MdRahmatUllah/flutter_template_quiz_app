import '../home_screen_one_screen/widgets/home_screen_one1_item_widget.dart';
import '../home_screen_one_screen/widgets/home_screen_one_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:quiz/core/app_export.dart';
import 'package:quiz/presentation/home_screen_page/home_screen_page.dart';
import 'package:quiz/presentation/profile_screen_page/profile_screen_page.dart';
import 'package:quiz/widgets/app_bar/appbar_image.dart';
import 'package:quiz/widgets/app_bar/custom_app_bar.dart';
import 'package:quiz/widgets/custom_bottom_bar.dart';

class HomeScreenOneScreen extends StatelessWidget {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            padding: getPadding(
              top: 35,
            ),
            child: Padding(
              padding: getPadding(
                left: 19,
                bottom: 5,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Popular Category",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRobotoRomanMedium24,
                  ),
                  Container(
                    height: getVerticalSize(
                      221,
                    ),
                    child: ListView.separated(
                      padding: getPadding(
                        top: 8,
                      ),
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          height: getVerticalSize(
                            11,
                          ),
                        );
                      },
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return HomeScreenOneItemWidget();
                      },
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 1,
                      top: 30,
                    ),
                    child: Text(
                      "All Category",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoRomanMedium24,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 8,
                    ),
                    child: GridView.builder(
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: getVerticalSize(
                          213,
                        ),
                        crossAxisCount: 2,
                        mainAxisSpacing: getHorizontalSize(
                          11,
                        ),
                        crossAxisSpacing: getHorizontalSize(
                          11,
                        ),
                      ),
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return HomeScreenOne1ItemWidget();
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            Navigator.pushNamed(
                navigatorKey.currentContext!, getCurrentRoute(type));
          },
        ),
      ),
    );
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
}
