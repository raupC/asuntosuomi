import 'package:myapp/core/app_export.dart';
import 'package:myapp/widgets/app_bar/appbar_image.dart';
import 'package:myapp/widgets/app_bar/appbar_title.dart';
import 'package:myapp/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(66),
                title:
                    AppbarTitle(text: "Account", margin: getMargin(left: 16)),
                actions: [
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgNotification,
                      margin:
                          getMargin(left: 13, top: 15, right: 13, bottom: 16),
                      onTap: () {
                        onTapNotification4(context);
                      })
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 11, bottom: 11),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GestureDetector(
                          onTap: () {
                            onTapUser(context);
                          },
                          child: Container(
                              width: double.maxFinite,
                              padding: getPadding(all: 16),
                              decoration: AppDecoration.fillWhiteA700,
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgUser24x24,
                                        height: getSize(24),
                                        width: getSize(24)),
                                    Padding(
                                        padding: getPadding(
                                            left: 16, top: 2, bottom: 3),
                                        child: Text("Profile",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsBold12Indigo900
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.5))))
                                  ]))),
                      GestureDetector(
                          onTap: () {
                            onTapOrder(context);
                          },
                          child: Container(
                              width: double.maxFinite,
                              padding: getPadding(all: 16),
                              decoration: AppDecoration.fillBlue50,
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgBagicon,
                                        height: getSize(24),
                                        width: getSize(24)),
                                    Padding(
                                        padding: getPadding(
                                            left: 16, top: 2, bottom: 3),
                                        child: Text("Order",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsBold12Indigo900
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.5))))
                                  ]))),
                      GestureDetector(
                          onTap: () {
                            onTapAddress(context);
                          },
                          child: Container(
                              width: double.maxFinite,
                              padding: getPadding(all: 16),
                              decoration: AppDecoration.fillWhiteA700,
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgLocation,
                                        height: getSize(24),
                                        width: getSize(24)),
                                    Padding(
                                        padding: getPadding(
                                            left: 16, top: 2, bottom: 3),
                                        child: Text("Address",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsBold12Indigo900
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.5))))
                                  ]))),
                      GestureDetector(
                          onTap: () {
                            onTapPayment(context);
                          },
                          child: Container(
                              width: double.maxFinite,
                              margin: getMargin(bottom: 5),
                              padding: getPadding(all: 16),
                              decoration: AppDecoration.fillWhiteA700,
                              child: Row(children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgMobile,
                                    height: getSize(24),
                                    width: getSize(24)),
                                Padding(
                                    padding:
                                        getPadding(left: 16, top: 4, bottom: 1),
                                    child: Text("Payment",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsBold12Indigo900
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.5))))
                              ])))
                    ]))));
  }

  onTapUser(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileScreen);
  }

  onTapOrder(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.orderScreen);
  }

  onTapAddress(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.addressScreen);
  }

  onTapPayment(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.addPaymentScreen);
  }

  onTapNotification4(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.notificationOneScreen);
  }
}
