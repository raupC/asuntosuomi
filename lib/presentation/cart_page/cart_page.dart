import '../cart_page/widgets/cart_item_widget.dart';
import 'package:myapp/core/app_export.dart';
import 'package:myapp/widgets/app_bar/appbar_image.dart';
import 'package:myapp/widgets/app_bar/appbar_title.dart';
import 'package:myapp/widgets/app_bar/custom_app_bar.dart';
import 'package:myapp/widgets/custom_button.dart';
import 'package:myapp/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class CartPage extends StatelessWidget {
  TextEditingController coponcodefieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(66),
                title:
                    AppbarTitle(text: "Your Cart", margin: getMargin(left: 16)),
                actions: [
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgNotification,
                      margin:
                          getMargin(left: 13, top: 15, right: 13, bottom: 16),
                      onTap: () {
                        onTapNotification2(context);
                      })
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 15, top: 7, right: 15, bottom: 7),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 1, right: 1),
                          child: ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(16));
                              },
                              itemCount: 2,
                              itemBuilder: (context, index) {
                                return CartItemWidget(onTapProductdetails: () {
                                  onTapProductdetails(context);
                                });
                              })),
                      Padding(
                          padding: getPadding(top: 52),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                    child: CustomTextFormField(
                                        focusNode: FocusNode(),
                                        controller: coponcodefieldController,
                                        hintText: "Enter Cupon Code",
                                        padding:
                                            TextFormFieldPadding.PaddingT19,
                                        textInputAction: TextInputAction.done)),
                                CustomButton(
                                    height: getVerticalSize(56),
                                    width: getHorizontalSize(87),
                                    text: "Apply",
                                    variant: ButtonVariant.FillLightblueA200,
                                    shape: ButtonShape.CustomBorderLR5,
                                    fontStyle:
                                        ButtonFontStyle.PoppinsBold12WhiteA700)
                              ])),
                      Container(
                          width: double.maxFinite,
                          child: Container(
                              margin: getMargin(top: 16, right: 2),
                              padding: getPadding(all: 16),
                              decoration: AppDecoration.outlineBlue501.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder5),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 1),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("Items (3)",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsRegular12
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.5))),
                                              Text("598.86",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsRegular12Indigo900
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.5)))
                                            ])),
                                    Padding(
                                        padding: getPadding(top: 16),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                  padding: getPadding(top: 1),
                                                  child: Text("Shipping",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsRegular12
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.5)))),
                                              Padding(
                                                  padding:
                                                      getPadding(bottom: 1),
                                                  child: Text("40.00",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsRegular12Indigo900
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.5))))
                                            ])),
                                    Padding(
                                        padding: getPadding(top: 14),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                  padding: getPadding(top: 1),
                                                  child: Text("Import charges",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsRegular12
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.5)))),
                                              Padding(
                                                  padding:
                                                      getPadding(bottom: 1),
                                                  child: Text("128.00",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsRegular12Indigo900
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.5))))
                                            ])),
                                    Padding(
                                        padding: getPadding(top: 12),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: ColorConstant.blue50)),
                                    Padding(
                                        padding: getPadding(top: 10),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("Total Price",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsBold12Indigo900
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.5))),
                                              Text("766.86",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsBold12
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.5)))
                                            ]))
                                  ]))),
                      CustomButton(
                          height: getVerticalSize(57),
                          text: "Check Out",
                          margin: getMargin(top: 16, bottom: 8),
                          onTap: () {
                            onTapCheckout(context);
                          })
                    ]))));
  }

  onTapProductdetails(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.productDetailScreen);
  }

  onTapCheckout(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.shipToScreen);
  }

  onTapNotification2(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.notificationOneScreen);
  }
}
