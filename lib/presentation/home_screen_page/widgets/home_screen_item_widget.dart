import 'package:flutter/material.dart';
import 'package:quiz/core/app_export.dart';

// ignore: must_be_immutable
class HomeScreenItemWidget extends StatelessWidget {
  HomeScreenItemWidget();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        margin: getMargin(
          right: 11,
        ),
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
                  93,
                ),
                width: getHorizontalSize(
                  156,
                ),
                padding: getPadding(
                  left: 54,
                  top: 22,
                  right: 54,
                  bottom: 22,
                ),
                decoration: AppDecoration.outlineIndigo400.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderTL4,
                ),
                child: Stack(
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgComputer,
                      height: getVerticalSize(
                        48,
                      ),
                      width: getHorizontalSize(
                        47,
                      ),
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                left: 8,
                top: 8,
              ),
              child: Text(
                "Python Mastery",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtRobotoRomanMedium16.copyWith(
                  letterSpacing: getHorizontalSize(
                    0.07,
                  ),
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                left: 8,
                top: 2,
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
                  top: 3,
                  bottom: 7,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Start Learning",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoRegular12Black900.copyWith(
                        letterSpacing: getHorizontalSize(
                          0.05,
                        ),
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgArrowright,
                      height: getVerticalSize(
                        9,
                      ),
                      width: getHorizontalSize(
                        12,
                      ),
                      margin: getMargin(
                        left: 49,
                        bottom: 5,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
