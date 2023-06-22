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
class ChangePasswordScreen extends StatelessWidget {
  TextEditingController oldpasswordOneController = TextEditingController();

  TextEditingController newpasswordOneController = TextEditingController();

  TextEditingController newpasswordagaiTwoController = TextEditingController();

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
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 14, bottom: 17),
                    onTap: () {
                      onTapArrowleft15(context);
                    }),
                title: AppbarTitle(
                    text: "Change Password", margin: getMargin(left: 12))),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 26, right: 16, bottom: 26),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Old Password",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsBold14Indigo900
                              .copyWith(letterSpacing: getHorizontalSize(0.5))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: oldpasswordOneController,
                          hintText: "•••••••••••••••••",
                          margin: getMargin(top: 12),
                          variant: TextFormFieldVariant.OutlineBlue50_1,
                          padding: TextFormFieldPadding.PaddingT14,
                          fontStyle:
                              TextFormFieldFontStyle.PoppinsBold12Bluegray300,
                          prefix: Container(
                              margin: getMargin(
                                  left: 16, top: 12, right: 10, bottom: 12),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgLock)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(48))),
                      Padding(
                          padding: getPadding(top: 23),
                          child: Text("New Password",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold14Indigo900
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(0.5)))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: newpasswordOneController,
                          hintText: "•••••••••••••••••",
                          margin: getMargin(top: 12),
                          variant: TextFormFieldVariant.OutlineBlue50_1,
                          padding: TextFormFieldPadding.PaddingT14,
                          fontStyle:
                              TextFormFieldFontStyle.PoppinsBold12Bluegray300,
                          prefix: Container(
                              margin: getMargin(
                                  left: 16, top: 12, right: 10, bottom: 12),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgLock)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(48))),
                      Padding(
                          padding: getPadding(top: 24),
                          child: Text("New Password Again",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold14Indigo900
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(0.5)))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: newpasswordagaiTwoController,
                          hintText: "•••••••••••••••••",
                          margin: getMargin(top: 11, bottom: 5),
                          variant: TextFormFieldVariant.OutlineBlue50_1,
                          padding: TextFormFieldPadding.PaddingT14,
                          fontStyle:
                              TextFormFieldFontStyle.PoppinsBold12Bluegray300,
                          textInputAction: TextInputAction.done,
                          prefix: Container(
                              margin: getMargin(
                                  left: 16, top: 12, right: 10, bottom: 12),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgLock)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(48)))
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
    Navigator.popAndPushNamed(context, AppRoutes.loginScreen);
  }

  onTapArrowleft15(BuildContext context) {
    Navigator.pop(context);
  }
}
