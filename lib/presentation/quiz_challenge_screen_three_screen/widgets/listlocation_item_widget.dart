import 'package:flutter/material.dart';
import 'package:quiz/core/app_export.dart';

// ignore: must_be_immutable
class ListlocationItemWidget extends StatelessWidget {
  ListlocationItemWidget();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomImageView(
          svgPath: ImageConstant.imgLocation,
          height: getSize(
            20,
          ),
          width: getSize(
            20,
          ),
          margin: getMargin(
            top: 42,
            bottom: 42,
          ),
        ),
        Container(
          margin: getMargin(
            left: 14,
          ),
          padding: getPadding(
            left: 8,
            top: 10,
            right: 8,
            bottom: 10,
          ),
          decoration: AppDecoration.fillBluegray900.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder7,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  left: 11,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 5,
                      ),
                      child: Text(
                        "x = 5",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRobotoRegular14WhiteA700.copyWith(
                          letterSpacing: getHorizontalSize(
                            0.04,
                          ),
                        ),
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgComputerWhiteA70011x11,
                      height: getSize(
                        11,
                      ),
                      width: getSize(
                        11,
                      ),
                      margin: getMargin(
                        left: 223,
                        bottom: 11,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 11,
                  top: 1,
                ),
                child: Text(
                  "y = \"John\"",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRobotoRegular14WhiteA700.copyWith(
                    letterSpacing: getHorizontalSize(
                      0.04,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 11,
                  top: 1,
                ),
                child: Text(
                  "print(x)",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRobotoRegular14WhiteA700.copyWith(
                    letterSpacing: getHorizontalSize(
                      0.04,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 11,
                  bottom: 7,
                ),
                child: Text(
                  "print(y)",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRobotoRegular14WhiteA700.copyWith(
                    letterSpacing: getHorizontalSize(
                      0.04,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
