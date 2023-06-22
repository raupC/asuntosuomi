import 'package:myapp/core/app_export.dart';
import 'package:myapp/widgets/app_bar/appbar_image.dart';
import 'package:myapp/widgets/app_bar/appbar_title.dart';
import 'package:myapp/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(65),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 16, bottom: 15),
                    onTap: () {
                      onTapArrowleft14(context);
                    }),
                title:
                    AppbarTitle(text: "Profile", margin: getMargin(left: 12))),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 36, bottom: 36),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 16),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgProfilepicture72x72,
                                    height: getSize(72),
                                    width: getSize(72),
                                    radius: BorderRadius.circular(
                                        getHorizontalSize(36))),
                                Padding(
                                    padding: getPadding(
                                        left: 16, top: 9, bottom: 14),
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsBold14Indigo900
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.5))),
                                          Padding(
                                              padding: getPadding(top: 8),
                                              child: Text("",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsRegular12
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.5))))
                                        ]))
                              ])),
                      Container(
                          width: double.maxFinite,
                          margin: getMargin(top: 32),
                          padding: getPadding(
                              left: 16, top: 15, right: 16, bottom: 15),
                          decoration: AppDecoration.fillWhiteA700,
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgLightbulb,
                                    height: getSize(24),
                                    width: getSize(24)),
                                Padding(
                                    padding:
                                        getPadding(left: 16, top: 2, bottom: 3),
                                    child: Text("Gender",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsBold12Indigo900
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.5)))),
                                Spacer(),
                                Padding(
                                    padding: getPadding(top: 2, bottom: 3),
                                    child: Text("Male",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsRegular12
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.5)))),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowright,
                                    height: getSize(24),
                                    width: getSize(24),
                                    margin: getMargin(left: 16))
                              ])),
                      Container(
                          width: double.maxFinite,
                          padding: getPadding(
                              left: 16, top: 15, right: 16, bottom: 15),
                          decoration: AppDecoration.fillWhiteA700,
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgCalendar,
                                height: getSize(24),
                                width: getSize(24)),
                            Padding(
                                padding:
                                    getPadding(left: 16, top: 3, bottom: 2),
                                child: Text("Birthday",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsBold12Indigo900
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.5)))),
                            Spacer(),
                            Padding(
                                padding: getPadding(top: 2, bottom: 3),
                                child: Text("12-12-2000",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsRegular12
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.5)))),
                            CustomImageView(
                                svgPath: ImageConstant.imgArrowright,
                                height: getSize(24),
                                width: getSize(24),
                                margin: getMargin(left: 16))
                          ])),
                      Container(
                          width: double.maxFinite,
                          padding: getPadding(
                              left: 16, top: 15, right: 16, bottom: 15),
                          decoration: AppDecoration.fillWhiteA700,
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgMail24x24,
                                height: getSize(24),
                                width: getSize(24)),
                            Padding(
                                padding:
                                    getPadding(left: 16, top: 2, bottom: 3),
                                child: Text("Email",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsBold12Indigo900
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.5)))),
                            Spacer(),
                            Padding(
                                padding: getPadding(top: 4, bottom: 1),
                                child: Text("",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsRegular12
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.5)))),
                            CustomImageView(
                                svgPath: ImageConstant.imgArrowright,
                                height: getSize(24),
                                width: getSize(24),
                                margin: getMargin(left: 16))
                          ])),
                      Container(
                          width: double.maxFinite,
                          padding: getPadding(
                              left: 16, top: 15, right: 16, bottom: 15),
                          decoration: AppDecoration.fillWhiteA700,
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgMobile,
                                    height: getSize(24),
                                    width: getSize(24)),
                                Padding(
                                    padding:
                                        getPadding(left: 16, top: 2, bottom: 3),
                                    child: Text("Phone Number",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsBold12Indigo900
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.5)))),
                                Spacer(),
                                Padding(
                                    padding: getPadding(top: 2, bottom: 3),
                                    child: Text("(307) 555-0133",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsRegular12
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.5)))),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowright,
                                    height: getSize(24),
                                    width: getSize(24),
                                    margin: getMargin(left: 16))
                              ])),
                      GestureDetector(
                          onTap: () {
                            onTapChangepassword(context);
                          },
                          child: Container(
                              width: double.maxFinite,
                              margin: getMargin(bottom: 5),
                              padding: getPadding(
                                  left: 16, top: 15, right: 16, bottom: 15),
                              decoration: AppDecoration.fillWhiteA700,
                              child: Row(children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgLock24x24,
                                    height: getSize(24),
                                    width: getSize(24)),
                                Padding(
                                    padding:
                                        getPadding(left: 16, top: 4, bottom: 1),
                                    child: Text("Change Password",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsBold12Indigo900
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.5)))),
                                Spacer(),
                                Padding(
                                    padding: getPadding(top: 3, bottom: 3),
                                    child: Text("•••••••••••••••••",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsRegular12
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.5)))),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowright,
                                    height: getSize(24),
                                    width: getSize(24),
                                    margin: getMargin(left: 16))
                              ])))
                    ]))));
  }

  onTapChangepassword(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.changePasswordScreen);
  }

  onTapArrowleft14(BuildContext context) {
    Navigator.pop(context);
  }
}
