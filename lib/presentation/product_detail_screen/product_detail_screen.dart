import '../product_detail_screen/widgets/recomended_item_widget.dart';
import '../product_detail_screen/widgets/sizes_item_widget.dart';
import '../product_detail_screen/widgets/slider_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:myapp/core/app_export.dart';
import 'package:myapp/widgets/app_bar/appbar_image.dart';
import 'package:myapp/widgets/app_bar/appbar_title.dart';
import 'package:myapp/widgets/app_bar/custom_app_bar.dart';
import 'package:myapp/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class ProductDetailScreen extends StatelessWidget {
  int silderIndex = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(24),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16),
                    onTap: () {
                      onTapArrowleft2(context);
                    }),
                title: AppbarTitle(
                    text: "Nike Air Max 270 Rea...",
                    margin: getMargin(left: 12)),
                actions: [
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgSearch,
                      margin: getMargin(left: 16),
                      onTap: () {
                        onTapSearch1(context);
                      }),
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgOverflowmenu,
                      margin: getMargin(left: 16, right: 16))
                ]),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(top: 28, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CarouselSlider.builder(
                                  options: CarouselOptions(
                                      height: getVerticalSize(238),
                                      initialPage: 0,
                                      autoPlay: true,
                                      viewportFraction: 1.0,
                                      enableInfiniteScroll: false,
                                      scrollDirection: Axis.horizontal,
                                      onPageChanged: (index, reason) {
                                        silderIndex = index;
                                      }),
                                  itemCount: 1,
                                  itemBuilder: (context, index, realIndex) {
                                    return SliderItemWidget();
                                  }),
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      height: getVerticalSize(8),
                                      margin: getMargin(top: 16),
                                      child: AnimatedSmoothIndicator(
                                          activeIndex: silderIndex,
                                          count: 1,
                                          axisDirection: Axis.horizontal,
                                          effect: ScrollingDotsEffect(
                                              spacing: 8,
                                              activeDotColor:
                                                  ColorConstant.lightBlueA200,
                                              dotColor: ColorConstant.blue50,
                                              dotHeight: getVerticalSize(8),
                                              dotWidth:
                                                  getHorizontalSize(8))))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 16, top: 15, right: 16),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                                width: getHorizontalSize(275),
                                                child: Text(
                                                    "Nike Air Zoom Pegasus 36 Miami",
                                                    maxLines: null,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsBold20
                                                        .copyWith(
                                                            letterSpacing:
                                                                getHorizontalSize(
                                                                    0.5)))),
                                            CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgDownload,
                                                height: getSize(24),
                                                width: getSize(24),
                                                margin: getMargin(
                                                    left: 44,
                                                    top: 2,
                                                    bottom: 32))
                                          ]))),
                              Padding(
                                  padding: getPadding(left: 16, top: 9),
                                  child: RatingBar.builder(
                                      initialRating: 4,
                                      minRating: 0,
                                      direction: Axis.horizontal,
                                      allowHalfRating: false,
                                      itemSize: getVerticalSize(16),
                                      unratedColor: ColorConstant.blue50,
                                      itemCount: 5,
                                      updateOnDrag: true,
                                      onRatingUpdate: (rating) {},
                                      itemBuilder: (context, _) {
                                        return Icon(Icons.star,
                                            color: ColorConstant.yellow700);
                                      })),
                              Padding(
                                  padding: getPadding(left: 16, top: 16),
                                  child: Text("299,43",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtPoppinsBold20LightblueA200
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              Padding(
                                  padding: getPadding(left: 16, top: 22),
                                  child: Text("Select Size",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold14Indigo900
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      height: getVerticalSize(61),
                                      child: ListView.separated(
                                          padding:
                                              getPadding(left: 16, top: 13),
                                          scrollDirection: Axis.horizontal,
                                          separatorBuilder: (context, index) {
                                            return SizedBox(
                                                height: getVerticalSize(16));
                                          },
                                          itemCount: 6,
                                          itemBuilder: (context, index) {
                                            return SizesItemWidget();
                                          }))),
                              Padding(
                                  padding: getPadding(left: 16, top: 23),
                                  child: Text("Select Color",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold14Indigo900
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              CustomImageView(
                                  imagePath: ImageConstant.imgColors,
                                  height: getVerticalSize(48),
                                  width: getHorizontalSize(359),
                                  margin: getMargin(left: 16, top: 12)),
                              Padding(
                                  padding: getPadding(left: 16, top: 24),
                                  child: Text("Specification",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold14Indigo900
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 16, top: 12, right: 16),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                                padding: getPadding(bottom: 45),
                                                child: Text("Shown:",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsRegular12Indigo900
                                                        .copyWith(
                                                            letterSpacing:
                                                                getHorizontalSize(
                                                                    0.5)))),
                                            Container(
                                                width: getHorizontalSize(169),
                                                margin: getMargin(top: 1),
                                                child: Text(
                                                    "Laser Blue/Anthracite/Watermelon/White",
                                                    maxLines: null,
                                                    textAlign: TextAlign.right,
                                                    style: AppStyle
                                                        .txtPoppinsRegular12
                                                        .copyWith(
                                                            letterSpacing:
                                                                getHorizontalSize(
                                                                    0.5))))
                                          ]))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 16, top: 18, right: 16),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                                padding: getPadding(top: 1),
                                                child: Text("Style:",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsRegular12Indigo900
                                                        .copyWith(
                                                            letterSpacing:
                                                                getHorizontalSize(
                                                                    0.5)))),
                                            Padding(
                                                padding: getPadding(bottom: 1),
                                                child: Text("CD0113-400",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsRegular12
                                                        .copyWith(
                                                            letterSpacing:
                                                                getHorizontalSize(
                                                                    0.5))))
                                          ]))),
                              Container(
                                  width: getHorizontalSize(320),
                                  margin:
                                      getMargin(left: 16, top: 19, right: 38),
                                  child: Text(
                                      "The Nike Air Max 270 React ENG combines a full-length React foam midsole with a 270 Max Air unit for unrivaled comfort and a striking visual experience.",
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsRegular12
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 16, top: 23, right: 16),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("Review Product",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsBold14Indigo900
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.5))),
                                            GestureDetector(
                                                onTap: () {
                                                  onTapTxtSeemorelink(context);
                                                },
                                                child: Text("See More",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsBold14LightblueA200
                                                        .copyWith(
                                                            letterSpacing:
                                                                getHorizontalSize(
                                                                    0.5))))
                                          ]))),
                              Padding(
                                  padding: getPadding(left: 16, top: 8),
                                  child: Row(children: [
                                    RatingBar.builder(
                                        initialRating: 4,
                                        minRating: 0,
                                        direction: Axis.horizontal,
                                        allowHalfRating: false,
                                        itemSize: getVerticalSize(16),
                                        unratedColor: ColorConstant.blue50,
                                        itemCount: 5,
                                        updateOnDrag: true,
                                        onRatingUpdate: (rating) {},
                                        itemBuilder: (context, _) {
                                          return Icon(Icons.star,
                                              color: ColorConstant.yellow700);
                                        }),
                                    Padding(
                                        padding: getPadding(left: 8, bottom: 1),
                                        child: Text("4.5",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsBold10Bluegray300
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.5)))),
                                    Padding(
                                        padding: getPadding(left: 3, bottom: 1),
                                        child: Text("(5 Review)",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtPoppinsRegular10
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.5))))
                                  ])),
                              Padding(
                                  padding: getPadding(left: 16, top: 16),
                                  child: Row(children: [
                                    CustomImageView(
                                        imagePath: ImageConstant
                                            .imgProfilepicture48x481,
                                        height: getSize(48),
                                        width: getSize(48),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(24))),
                                    Padding(
                                        padding: getPadding(
                                            left: 16, top: 2, bottom: 4),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text("James Lawson",
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
                                                  padding: getPadding(top: 4),
                                                  child: RatingBar.builder(
                                                      initialRating: 4,
                                                      minRating: 0,
                                                      direction:
                                                          Axis.horizontal,
                                                      allowHalfRating: false,
                                                      itemSize:
                                                          getVerticalSize(16),
                                                      unratedColor:
                                                          ColorConstant.blue50,
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
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      width: getHorizontalSize(339),
                                      margin: getMargin(
                                          left: 16, top: 18, right: 19),
                                      child: Text(
                                          "air max are always very comfortable fit, clean and just perfect in every way. just the box was too small and scrunched the sneakers up a little bit, not sure if the box was always this small but the 90s are and will always be one of my favorites.",
                                          maxLines: null,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtPoppinsRegular12
                                              .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(
                                                          0.5))))),
                              Padding(
                                  padding: getPadding(left: 16, top: 16),
                                  child: Row(children: [
                                    CustomImageView(
                                        imagePath: ImageConstant
                                            .imgProductpicture0272x72,
                                        height: getSize(72),
                                        width: getSize(72),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(8))),
                                    CustomImageView(
                                        imagePath: ImageConstant
                                            .imgProductpicture0372x72,
                                        height: getSize(72),
                                        width: getSize(72),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(8)),
                                        margin: getMargin(left: 12)),
                                    CustomImageView(
                                        imagePath: ImageConstant
                                            .imgProductpicture0172x72,
                                        height: getSize(72),
                                        width: getSize(72),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(5)),
                                        margin: getMargin(left: 12))
                                  ])),
                              Padding(
                                  padding: getPadding(left: 16, top: 16),
                                  child: Text("December 10, 2016",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsRegular10
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              Padding(
                                  padding: getPadding(left: 16, top: 23),
                                  child: Text("You Might Also Like",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold14Indigo900
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.07)))),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      height: getVerticalSize(249),
                                      child: ListView.separated(
                                          padding:
                                              getPadding(left: 16, top: 11),
                                          scrollDirection: Axis.horizontal,
                                          separatorBuilder: (context, index) {
                                            return SizedBox(
                                                height: getVerticalSize(16));
                                          },
                                          itemCount: 3,
                                          itemBuilder: (context, index) {
                                            return RecomendedItemWidget();
                                          })))
                            ])))),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(57),
                text: "Add To Cart",
                margin: getMargin(left: 16, right: 16, bottom: 50))));
  }

  onTapTxtSeemorelink(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.reviewProductScreen);
  }

  onTapArrowleft2(BuildContext context) {
    Navigator.pop(context);
  }

  onTapSearch1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.searchScreen);
  }
}
