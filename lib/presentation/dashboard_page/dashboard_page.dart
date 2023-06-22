import '../dashboard_page/widgets/categories_item_widget.dart';
import '../dashboard_page/widgets/dashboard_item_widget.dart';
import '../dashboard_page/widgets/flashsale_item_widget.dart';
import '../dashboard_page/widgets/megasale_item_widget.dart';
import '../dashboard_page/widgets/sliderofferbannertitl_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:myapp/core/app_export.dart';
import 'package:myapp/widgets/app_bar/appbar_image.dart';
import 'package:myapp/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class DashboardPage extends StatelessWidget {
  int silderIndex = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(43),
                leadingWidth: 48,
                leading: AppbarImage(
                    height: getSize(16),
                    width: getSize(16),
                    svgPath: ImageConstant.imgSearchLightBlueA200,
                    margin: getMargin(left: 32, top: 4, bottom: 4)),
                title: GestureDetector(
                    onTap: () {
                      onTapTxtSearchproduct(context);
                    },
                    child: Padding(
                        padding: getPadding(left: 8),
                        child: Text("Search Product",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsRegular12.copyWith(
                                letterSpacing: getHorizontalSize(0.5))))),
                actions: [
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgDownload,
                      margin: getMargin(left: 16),
                      onTap: () {
                        onTapDownload(context);
                      }),
                  Container(
                      height: getSize(24),
                      width: getSize(24),
                      margin: getMargin(left: 16, right: 16),
                      child: Stack(alignment: Alignment.topRight, children: [
                        AppbarImage(
                            height: getSize(24),
                            width: getSize(24),
                            svgPath: ImageConstant.imgNotification,
                            onTap: () {
                              onTapNotification(context);
                            }),
                        AppbarImage(
                            height: getSize(8),
                            width: getSize(8),
                            svgPath: ImageConstant.imgClose8x8,
                            margin: getMargin(left: 14, right: 2, bottom: 16))
                      ]))
                ]),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(left: 16, top: 43, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: getPadding(right: 16),
                                  child: CarouselSlider.builder(
                                      options: CarouselOptions(
                                          height: getVerticalSize(206),
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
                                        return SliderofferbannertitlItemWidget();
                                      })),
                              Container(
                                  height: getVerticalSize(8),
                                  margin: getMargin(left: 135, top: 16),
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
                                          dotWidth: getHorizontalSize(8)))),
                              Padding(
                                  padding: getPadding(top: 25, right: 16),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Category",
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
                                              onTapTxtMorecategorylin(context);
                                            },
                                            child: Text("More Category",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsBold14LightblueA200
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.5))))
                                      ])),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      height: getVerticalSize(118),
                                      child: ListView.separated(
                                          padding: getPadding(top: 10),
                                          scrollDirection: Axis.horizontal,
                                          separatorBuilder: (context, index) {
                                            return SizedBox(
                                                height: getVerticalSize(12));
                                          },
                                          itemCount: 6,
                                          itemBuilder: (context, index) {
                                            return CategoriesItemWidget();
                                          }))),
                              GestureDetector(
                                  onTap: () {
                                    onTapRowflashsale(context);
                                  },
                                  child: Padding(
                                      padding: getPadding(top: 23, right: 16),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("Flash Sale",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsBold14Indigo900
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.5))),
                                            Text("See More",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsBold14LightblueA200
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.5)))
                                          ]))),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      height: getVerticalSize(250),
                                      child: ListView.separated(
                                          padding: getPadding(top: 12),
                                          scrollDirection: Axis.horizontal,
                                          separatorBuilder: (context, index) {
                                            return SizedBox(
                                                height: getVerticalSize(16));
                                          },
                                          itemCount: 3,
                                          itemBuilder: (context, index) {
                                            return FlashsaleItemWidget(
                                                onTapProduct: () {
                                              onTapProduct(context);
                                            });
                                          }))),
                              GestureDetector(
                                  onTap: () {
                                    onTapMegasaleheader(context);
                                  },
                                  child: Padding(
                                      padding: getPadding(top: 23, right: 16),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                                padding: getPadding(top: 1),
                                                child: Text("Mega Sale",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsBold14Indigo900
                                                        .copyWith(
                                                            letterSpacing:
                                                                getHorizontalSize(
                                                                    0.5)))),
                                            Padding(
                                                padding: getPadding(bottom: 1),
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
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      height: getVerticalSize(248),
                                      child: ListView.separated(
                                          padding: getPadding(top: 10),
                                          scrollDirection: Axis.horizontal,
                                          separatorBuilder: (context, index) {
                                            return SizedBox(
                                                height: getVerticalSize(16));
                                          },
                                          itemCount: 3,
                                          itemBuilder: (context, index) {
                                            return MegasaleItemWidget(
                                                onTapMegaSaleProduct: () {
                                              onTapMegaSaleProduct(context);
                                            });
                                          }))),
                              CustomImageView(
                                  imagePath:
                                      ImageConstant.imgRecomendedproduct206x343,
                                  height: getVerticalSize(206),
                                  width: getHorizontalSize(343),
                                  radius: BorderRadius.circular(
                                      getHorizontalSize(5)),
                                  margin: getMargin(top: 29)),
                              Padding(
                                  padding: getPadding(top: 16, right: 16),
                                  child: GridView.builder(
                                      shrinkWrap: true,
                                      gridDelegate:
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                              mainAxisExtent:
                                                  getVerticalSize(283),
                                              crossAxisCount: 2,
                                              mainAxisSpacing:
                                                  getHorizontalSize(13),
                                              crossAxisSpacing:
                                                  getHorizontalSize(13)),
                                      physics: NeverScrollableScrollPhysics(),
                                      itemCount: 4,
                                      itemBuilder: (context, index) {
                                        return DashboardItemWidget(
                                            onTapProducts: () {
                                          onTapProducts(context);
                                        });
                                      }))
                            ]))))));
  }

  onTapTxtMorecategorylin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.listCategoryScreen);
  }

  onTapRowflashsale(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.offerScreen);
  }

  onTapMegasaleheader(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.offerScreen);
  }

  onTapTxtSearchproduct(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.searchScreen);
  }

  onTapDownload(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.favoriteProductScreen);
  }

  onTapNotification(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.notificationOneScreen);
  }

  onTapProduct(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.productDetailScreen);
  }

  onTapProducts(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.productDetailScreen);
  }

  onTapMegaSaleProduct(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.productDetailScreen);
  }
}
