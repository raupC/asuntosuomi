import 'package:myapp/core/app_export.dart';
import 'package:myapp/widgets/app_bar/appbar_image.dart';
import 'package:myapp/widgets/app_bar/appbar_title.dart';
import 'package:myapp/widgets/app_bar/custom_app_bar.dart';
import 'package:myapp/widgets/custom_button.dart';
import 'package:myapp/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

// ignore_for_file: must_be_immutable
class WriteReviewFillScreen extends StatelessWidget {
  TextEditingController addreviewController = TextEditingController();

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
                    margin: getMargin(left: 16, top: 16, bottom: 15),
                    onTap: () {
                      onTapArrowleft4(context);
                    }),
                title: AppbarTitle(
                    text: "Write Review", margin: getMargin(left: 12))),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 15, top: 27, right: 15, bottom: 27),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: getHorizontalSize(343),
                          child: Text(
                              "Please write Overall level of satisfaction with your shipping / Delivery Service",
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold14Indigo900
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(0.5)))),
                      Padding(
                          padding: getPadding(top: 13),
                          child: RatingBar.builder(
                              initialRating: 4,
                              minRating: 0,
                              direction: Axis.horizontal,
                              allowHalfRating: false,
                              itemSize: getVerticalSize(32),
                              unratedColor: ColorConstant.blue50,
                              itemCount: 5,
                              updateOnDrag: true,
                              onRatingUpdate: (rating) {},
                              itemBuilder: (context, _) {
                                return Icon(Icons.star,
                                    color: ColorConstant.yellow700);
                              })),
                      Padding(
                          padding: getPadding(top: 22),
                          child: Text("Write Your Review",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold14Indigo900
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(0.5)))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: addreviewController,
                          hintText: "Add Review",
                          margin: getMargin(top: 13, bottom: 5),
                          padding: TextFormFieldPadding.PaddingT71,
                          fontStyle:
                              TextFormFieldFontStyle.PoppinsBold12Bluegray300,
                          textInputAction: TextInputAction.done,
                          maxLines: 8)
                    ])),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(57),
                text: "Write Review",
                margin: getMargin(left: 16, right: 16, bottom: 34),
                onTap: () {
                  onTapWritereview(context);
                })));
  }

  onTapWritereview(BuildContext context) {
    Navigator.popAndPushNamed(context, AppRoutes.reviewProductScreen);
  }

  onTapArrowleft4(BuildContext context) {
    Navigator.pop(context);
  }
}
