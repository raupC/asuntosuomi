import 'package:myapp/core/app_export.dart';
import 'package:myapp/widgets/app_bar/appbar_image.dart';
import 'package:myapp/widgets/app_bar/appbar_title.dart';
import 'package:myapp/widgets/app_bar/custom_app_bar.dart';
import 'package:myapp/widgets/custom_button.dart';
import 'package:myapp/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class LailyfaFebrinaCardScreen extends StatelessWidget {
  TextEditingController cardnumberOneController = TextEditingController();

  TextEditingController expirationdateOneController = TextEditingController();

  TextEditingController zipcodeController = TextEditingController();

  TextEditingController cardholdernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(56),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getVerticalSize(26),
                    width: getHorizontalSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 14, bottom: 15),
                    onTap: () {
                      onTapArrowleft23(context);
                    }),
                title: AppbarTitle(
                    text: "Lailyfa Febrina Card", margin: getMargin(left: 12))),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 14, top: 19, right: 14, bottom: 19),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: double.maxFinite,
                          child: Container(
                              margin: getMargin(left: 2),
                              padding: getPadding(
                                  left: 21, top: 23, right: 21, bottom: 23),
                              decoration: AppDecoration.fillLightblueA200
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder5),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgVolume,
                                        height: getVerticalSize(22),
                                        width: getHorizontalSize(36),
                                        margin: getMargin(left: 3)),
                                    Padding(
                                        padding: getPadding(top: 30),
                                        child: Text(
                                            "6326    9124    8124    9875",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtPoppinsBold24
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.5)))),
                                    Padding(
                                        padding: getPadding(top: 17),
                                        child: Row(children: [
                                          Padding(
                                              padding: getPadding(top: 2),
                                              child: Text("CARD HOLDER",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsRegular10WhiteA70087
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.5)))),
                                          Padding(
                                              padding: getPadding(
                                                  left: 37, bottom: 2),
                                              child: Text("CARD SAVE",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsRegular10WhiteA70087
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.5))))
                                        ])),
                                    Padding(
                                        padding: getPadding(top: 1),
                                        child: Row(children: [
                                          Padding(
                                              padding: getPadding(top: 3),
                                              child: Text("Lailyfa Febrina",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsBold10WhiteA700
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.5)))),
                                          Padding(
                                              padding: getPadding(
                                                  left: 32, bottom: 3),
                                              child: Text("06/24",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsBold10WhiteA700
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.5))))
                                        ]))
                                  ]))),
                      Padding(
                          padding: getPadding(left: 4, top: 23),
                          child: Text("Card Number",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold14Indigo900
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(0.5)))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: cardnumberOneController,
                          hintText: "1231 - 2312 - 3123 - 1231",
                          margin: getMargin(left: 4, top: 12),
                          padding: TextFormFieldPadding.PaddingT17_1,
                          fontStyle: TextFormFieldFontStyle
                              .PoppinsSemiBold12Bluegray300),
                      Padding(
                          padding: getPadding(left: 4, top: 24),
                          child: Text("Expiration Date",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold14Indigo900
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(0.5)))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: expirationdateOneController,
                          hintText: "12/12",
                          margin: getMargin(left: 4, top: 11),
                          padding: TextFormFieldPadding.PaddingT17_1,
                          fontStyle: TextFormFieldFontStyle
                              .PoppinsSemiBold12Bluegray300),
                      Padding(
                          padding: getPadding(left: 2, top: 29),
                          child: Text("Security Code",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold14Indigo900
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(0.5)))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: zipcodeController,
                          hintText: "1219",
                          margin: getMargin(left: 2, top: 11),
                          padding: TextFormFieldPadding.PaddingT17_1,
                          fontStyle: TextFormFieldFontStyle
                              .PoppinsSemiBold12Bluegray300),
                      Padding(
                          padding: getPadding(left: 4, top: 23),
                          child: Text("Card Holder",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold14Indigo900
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(0.5)))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: cardholdernameController,
                          hintText: "Lailyfa Febrina",
                          margin: getMargin(left: 4, top: 12, bottom: 5),
                          padding: TextFormFieldPadding.PaddingT17_1,
                          fontStyle: TextFormFieldFontStyle
                              .PoppinsSemiBold12Bluegray300,
                          textInputAction: TextInputAction.done)
                    ])),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(57),
                text: "Save",
                margin: getMargin(left: 16, right: 16, bottom: 50),
                onTap: () {
                  onTapSave(context);
                })));
  }

  onTapSave(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.creditCardAndDebitScreen);
  }

  onTapArrowleft23(BuildContext context) {
    Navigator.pop(context);
  }
}
