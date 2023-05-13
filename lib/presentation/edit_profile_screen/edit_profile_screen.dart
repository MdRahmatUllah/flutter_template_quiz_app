import 'package:flutter/material.dart';
import 'package:quiz/core/app_export.dart';
import 'package:quiz/presentation/home_screen_page/home_screen_page.dart';
import 'package:quiz/presentation/profile_screen_page/profile_screen_page.dart';
import 'package:quiz/widgets/app_bar/appbar_image.dart';
import 'package:quiz/widgets/app_bar/appbar_title.dart';
import 'package:quiz/widgets/app_bar/custom_app_bar.dart';
import 'package:quiz/widgets/custom_bottom_bar.dart';
import 'package:quiz/widgets/custom_button.dart';
import 'package:quiz/widgets/custom_drop_down.dart';
import 'package:quiz/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class EditProfileScreen extends StatelessWidget {
  TextEditingController firstnameoneController = TextEditingController();

  TextEditingController lastnameoneController = TextEditingController();

  TextEditingController emailoneController = TextEditingController();

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(71),
                leadingWidth: 30,
                leading: AppbarImage(
                    height: getVerticalSize(13),
                    width: getHorizontalSize(10),
                    svgPath: ImageConstant.imgArrowleftBlack900,
                    margin: getMargin(left: 20, top: 22, bottom: 20),
                    onTap: () {
                      onTapArrowleft1(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "Edit Profile")),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        getPadding(left: 19, top: 24, right: 19, bottom: 24),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  height: getSize(136),
                                  width: getSize(136),
                                  child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgEllipse50,
                                            height: getSize(136),
                                            width: getSize(136),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(68)),
                                            alignment: Alignment.center),
                                        CustomImageView(
                                            svgPath:
                                                ImageConstant.imgEditWhiteA700,
                                            height: getSize(18),
                                            width: getSize(18),
                                            alignment: Alignment.bottomCenter,
                                            margin: getMargin(bottom: 10))
                                      ]))),
                          Padding(
                              padding: getPadding(left: 1, top: 39),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                        child: Padding(
                                            padding: getPadding(right: 8),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text("First name",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoMedium14Gray800
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.01))),
                                                  CustomTextFormField(
                                                      width: getHorizontalSize(
                                                          166),
                                                      focusNode: FocusNode(),
                                                      controller:
                                                          firstnameoneController,
                                                      hintText: "Jared",
                                                      margin:
                                                          getMargin(top: 10))
                                                ]))),
                                    Expanded(
                                        child: Padding(
                                            padding: getPadding(left: 8),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text("Last name",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoMedium14Gray800
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.01))),
                                                  CustomTextFormField(
                                                      width: getHorizontalSize(
                                                          166),
                                                      focusNode: FocusNode(),
                                                      controller:
                                                          lastnameoneController,
                                                      hintText: "Dunn",
                                                      margin:
                                                          getMargin(top: 10))
                                                ])))
                                  ])),
                          Padding(
                              padding: getPadding(left: 1, top: 19),
                              child: Text("Email",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRobotoMedium14Gray800
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.01)))),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: emailoneController,
                              hintText: "jared@gmail.com",
                              margin: getMargin(left: 1, top: 10),
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.emailAddress),
                          Padding(
                              padding: getPadding(top: 20),
                              child: Text("Country",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRobotoMedium14Gray800
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.01)))),
                          CustomDropDown(
                              focusNode: FocusNode(),
                              icon: Container(
                                  margin: getMargin(left: 30, right: 15),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.gray700),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgArrowdown)),
                              hintText: "USA",
                              margin: getMargin(top: 9),
                              items: dropdownItemList,
                              onChanged: (value) {}),
                          CustomButton(
                              height: getVerticalSize(50),
                              text: "Update",
                              margin: getMargin(top: 19, bottom: 5),
                              variant: ButtonVariant.Brand,
                              padding: ButtonPadding.PaddingAll16)
                        ]))),
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

  onTapArrowleft1(BuildContext context) {
    Navigator.pop(context);
  }
}
