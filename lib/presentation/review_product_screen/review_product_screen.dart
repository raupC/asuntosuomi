import 'package:myapp/core/app_export.dart';
import 'package:myapp/widgets/app_bar/appbar_image.dart';
import 'package:myapp/widgets/app_bar/appbar_title.dart';
import 'package:myapp/widgets/app_bar/custom_app_bar.dart';
import 'package:myapp/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ReviewProductScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(24),
                leadingWidth: 43,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 19),
                    onTap: () {
                      onTapArrowleft3(context);
                    }),
                title:
                    AppbarTitle(text: "5 Review", margin: getMargin(left: 12))),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding:
                            getPadding(left: 19, top: 34, right: 23, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(children: [
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgProfilepicture48x481,
                                    height: getSize(48),
                                    width: getSize(48),
                                    radius: BorderRadius.circular(
                                        getHorizontalSize(24))),
                                Padding(
                                    padding:
                                        getPadding(left: 16, top: 2, bottom: 4),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("James Lawson",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsBold14Indigo900
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.5))),
                                          Padding(
                                              padding: getPadding(top: 4),
                                              child: RatingBar.builder(
                                                  initialRating: 5,
                                                  minRating: 0,
                                                  direction: Axis.horizontal,
                                                  allowHalfRating: false,
                                                  itemSize: getVerticalSize(16),
                                                  itemCount: 5,
                                                  updateOnDrag: true,
                                                  onRatingUpdate: (rating) {},
                                                  itemBuilder: (context, _) {
                                                    return Icon(Icons.star,
                                                        color: ColorConstant
                                                            .yellow700);
                                                  }))
                                        ]))
                              ]),
                              Container(
                                  width: getHorizontalSize(333),
                                  margin: getMargin(top: 18),
                                  child: Text(
                                      "air max are always very comfortable fit, clean and just perfect in every way. just the box was too small and scrunched the sneakers up a little bit, not sure if the box was always this small but the 90s are and will always be one of my favorites.",
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsRegular12
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              Padding(
                                  padding: getPadding(top: 16),
                                  child: Text("December 10, 2016",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsRegular10
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              Padding(
                                  padding: getPadding(top: 32),
                                  child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgProfilepicture48x482,
                                            height: getSize(48),
                                            width: getSize(48),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(24))),
                                        Padding(
                                            padding: getPadding(
                                                left: 16, top: 1, bottom: 4),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text("Laura Octavian",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsBold14Indigo900
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.5))),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 5),
                                                      child: RatingBar.builder(
                                                          initialRating: 4,
                                                          minRating: 0,
                                                          direction:
                                                              Axis.horizontal,
                                                          allowHalfRating:
                                                              false,
                                                          itemSize:
                                                              getVerticalSize(
                                                                  16),
                                                          unratedColor:
                                                              ColorConstant
                                                                  .blue50,
                                                          itemCount: 5,
                                                          updateOnDrag: true,
                                                          onRatingUpdate:
                                                              (rating) {},
                                                          itemBuilder:
                                                              (context, _) {
                                                            return Icon(
                                                                Icons.star,
                                                                color: ColorConstant
                                                                    .yellow700);
                                                          }))
                                                ]))
                                      ])),
                              Container(
                                  width: getHorizontalSize(317),
                                  margin: getMargin(top: 18, right: 15),
                                  child: Text(
                                      "This is really amazing product, i like the design of product, I hope can buy it again!",
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsRegular12
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              Padding(
                                  padding: getPadding(top: 16),
                                  child: Text("December 10, 2016",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsRegular10
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              Padding(
                                  padding: getPadding(top: 34),
                                  child: Row(children: [
                                    CustomImageView(
                                        imagePath: ImageConstant
                                            .imgProfilepicture48x483,
                                        height: getSize(48),
                                        width: getSize(48),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(24))),
                                    Padding(
                                        padding: getPadding(
                                            left: 16, top: 3, bottom: 4),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text("Jhonson Bridge",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsBold14Indigo900
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.5))),
                                              Padding(
                                                  padding: getPadding(top: 3),
                                                  child: RatingBar.builder(
                                                      initialRating: 5,
                                                      minRating: 0,
                                                      direction:
                                                          Axis.horizontal,
                                                      allowHalfRating: false,
                                                      itemSize:
                                                          getVerticalSize(16),
                                                      itemCount: 5,
                                                      updateOnDrag: true,
                                                      onRatingUpdate:
                                                          (rating) {},
                                                      itemBuilder:
                                                          (context, _) {
                                                        return Icon(Icons.star,
                                                            color: ColorConstant
                                                                .yellow700);
                                                      }))
                                            ]))
                                  ])),
                              Container(
                                  width: getHorizontalSize(331),
                                  margin: getMargin(top: 18),
                                  child: Text(
                                      "air max are always very comfortable fit, clean and just perfect in every way. just the box was too small and scrunched the sneakers up a little bit",
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsRegular12
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              Padding(
                                  padding: getPadding(top: 16),
                                  child: Text("December 10, 2016",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsRegular10
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              Padding(
                                  padding: getPadding(top: 26),
                                  child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgProfilepicture48x482,
                                            height: getSize(48),
                                            width: getSize(48),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(24))),
                                        Padding(
                                            padding: getPadding(
                                                left: 16, top: 1, bottom: 4),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text("Laura Octavian",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsBold14Indigo900
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.5))),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 5),
                                                      child: RatingBar.builder(
                                                          initialRating: 4,
                                                          minRating: 0,
                                                          direction:
                                                              Axis.horizontal,
                                                          allowHalfRating:
                                                              false,
                                                          itemSize:
                                                              getVerticalSize(
                                                                  16),
                                                          unratedColor:
                                                              ColorConstant
                                                                  .blue50,
                                                          itemCount: 5,
                                                          updateOnDrag: true,
                                                          onRatingUpdate:
                                                              (rating) {},
                                                          itemBuilder:
                                                              (context, _) {
                                                            return Icon(
                                                                Icons.star,
                                                                color: ColorConstant
                                                                    .yellow700);
                                                          }))
                                                ]))
                                      ])),
                              Container(
                                  width: getHorizontalSize(317),
                                  margin: getMargin(top: 18, right: 15),
                                  child: Text(
                                      "This is really amazing product, i like the design of product, I hope can buy it again!",
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsRegular12
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              Padding(
                                  padding: getPadding(top: 16),
                                  child: Text("December 10, 2016",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsRegular10
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              Padding(
                                  padding: getPadding(top: 34),
                                  child: Row(children: [
                                    CustomImageView(
                                        imagePath: ImageConstant
                                            .imgProfilepicture48x483,
                                        height: getSize(48),
                                        width: getSize(48),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(24))),
                                    Padding(
                                        padding: getPadding(
                                            left: 16, top: 3, bottom: 4),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text("Jhonson Bridge",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsBold14Indigo900
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.5))),
                                              Padding(
                                                  padding: getPadding(top: 3),
                                                  child: RatingBar.builder(
                                                      initialRating: 5,
                                                      minRating: 0,
                                                      direction:
                                                          Axis.horizontal,
                                                      allowHalfRating: false,
                                                      itemSize:
                                                          getVerticalSize(16),
                                                      itemCount: 5,
                                                      updateOnDrag: true,
                                                      onRatingUpdate:
                                                          (rating) {},
                                                      itemBuilder:
                                                          (context, _) {
                                                        return Icon(Icons.star,
                                                            color: ColorConstant
                                                                .yellow700);
                                                      }))
                                            ]))
                                  ])),
                              Container(
                                  width: getHorizontalSize(331),
                                  margin: getMargin(top: 18),
                                  child: Text(
                                      "air max are always very comfortable fit, clean and just perfect in every way. just the box was too small and scrunched the sneakers up a little bit",
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsRegular12
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              Padding(
                                  padding: getPadding(top: 16),
                                  child: Text("December 10, 2016",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsRegular10
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5))))
                            ])))),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(57),
                text: "Write Review",
                margin: getMargin(left: 19, right: 13, bottom: 58),
                onTap: () {
                  onTapWritereview(context);
                })));
  }

  onTapWritereview(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.writeReviewFillScreen);
  }

  onTapArrowleft3(BuildContext context) {
    Navigator.pop(context);
  }
}
