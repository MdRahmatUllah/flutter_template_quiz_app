import 'package:flutter/material.dart';
import 'package:quiz/core/app_export.dart';

// ignore: must_be_immutable
class HomeScreenOne1ItemWidget extends StatelessWidget {
  HomeScreenOne1ItemWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineBlack9001e.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: EdgeInsets.all(0),
            color: ColorConstant.indigo400,
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: ColorConstant.indigo400,
                width: getHorizontalSize(
                  1,
                ),
              ),
              borderRadius: BorderRadiusStyle.customBorderTL4,
            ),
            child: Container(
              height: getVerticalSize(
                122,
              ),
              width: getHorizontalSize(
                206,
              ),
              padding: getPadding(
                top: 29,
                bottom: 29,
              ),
              decoration: AppDecoration.outlineIndigo400.copyWith(
                borderRadius: BorderRadiusStyle.customBorderTL4,
              ),
              child: Stack(
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgComputer,
                    height: getVerticalSize(
                      63,
                    ),
                    width: getHorizontalSize(
                      62,
                    ),
                    alignment: Alignment.center,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              left: 11,
              top: 10,
            ),
            child: Text(
              "",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtRobotoMedium20.copyWith(
                letterSpacing: getHorizontalSize(
                  0.03,
                ),
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              left: 12,
              top: 3,
            ),
            child: Text(
              "120 Quizes",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtRobotoMedium10.copyWith(
                letterSpacing: getHorizontalSize(
                  0.15,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: getPadding(
                top: 8,
                bottom: 14,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Start Learning".toUpperCase(),
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRobotoMedium14Black900.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.1,
                      ),
                    ),
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgArrowrightBlack900,
                    height: getVerticalSize(
                      12,
                    ),
                    width: getHorizontalSize(
                      16,
                    ),
                    margin: getMargin(
                      left: 51,
                      top: 2,
                      bottom: 2,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
