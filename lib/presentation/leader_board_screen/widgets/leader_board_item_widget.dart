import 'package:flutter/material.dart';
import 'package:quiz/core/app_export.dart';

// ignore: must_be_immutable
class LeaderBoardItemWidget extends StatelessWidget {
  LeaderBoardItemWidget();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: getPadding(
          left: 13,
          top: 8,
          right: 13,
          bottom: 8,
        ),
        decoration: AppDecoration.outlineGray4001,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: getPadding(
                left: 4,
                top: 9,
                bottom: 9,
              ),
              child: Text(
                "",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtRobotoMedium14Gray700.copyWith(
                  letterSpacing: getHorizontalSize(
                    0.01,
                  ),
                ),
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgEllipse5336x36,
              height: getSize(
                36,
              ),
              width: getSize(
                36,
              ),
              radius: BorderRadius.circular(
                getHorizontalSize(
                  18,
                ),
              ),
              margin: getMargin(
                left: 13,
              ),
            ),
            Padding(
              padding: getPadding(
                left: 23,
                top: 9,
                bottom: 10,
              ),
              child: Text(
                "",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtRobotoRegular14.copyWith(
                  letterSpacing: getHorizontalSize(
                    0.04,
                  ),
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: getPadding(
                top: 11,
                bottom: 8,
              ),
              child: Text(
                "9.9 points",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtRobotoRegular14.copyWith(
                  letterSpacing: getHorizontalSize(
                    0.04,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
