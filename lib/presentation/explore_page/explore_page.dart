import '../explore_page/widgets/explore1_item_widget.dart';
import '../explore_page/widgets/explore_item_widget.dart';
import 'package:myapp/core/app_export.dart';
import 'package:myapp/widgets/app_bar/appbar_image.dart';
import 'package:myapp/widgets/app_bar/appbar_searchview.dart';
import 'package:myapp/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ExplorePage extends StatelessWidget {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(67),
                title: AppbarSearchview(
                    margin: getMargin(left: 16),
                    hintText: "Search Product",
                    controller: searchController),
                actions: [
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgDownload,
                      margin: getMargin(left: 16, top: 16, right: 16),
                      onTap: () {
                        onTapDownload1(context);
                      }),
                  Container(
                      height: getSize(24),
                      width: getSize(24),
                      margin: getMargin(left: 16, top: 16, right: 32),
                      child: Stack(alignment: Alignment.topRight, children: [
                        AppbarImage(
                            height: getSize(24),
                            width: getSize(24),
                            svgPath: ImageConstant.imgNotification,
                            onTap: () {
                              onTapNotification1(context);
                            }),
                        AppbarImage(
                            height: getSize(8),
                            width: getSize(8),
                            svgPath: ImageConstant.imgClose8x8,
                            margin: getMargin(left: 14, right: 2, bottom: 16))
                      ]))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 25, right: 16, bottom: 25),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Man Fashion",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsBold14Indigo900
                              .copyWith(letterSpacing: getHorizontalSize(0.5))),
                      Padding(
                          padding: getPadding(top: 13),
                          child: GridView.builder(
                              shrinkWrap: true,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      mainAxisExtent: getVerticalSize(93),
                                      crossAxisCount: 4,
                                      mainAxisSpacing: getHorizontalSize(21),
                                      crossAxisSpacing: getHorizontalSize(21)),
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: 6,
                              itemBuilder: (context, index) {
                                return ExploreItemWidget();
                              })),
                      Padding(
                          padding: getPadding(top: 23),
                          child: Text("Woman Fashion",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold14Indigo900
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(0.5)))),
                      Padding(
                          padding: getPadding(top: 13),
                          child: ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(16));
                              },
                              itemCount: 2,
                              itemBuilder: (context, index) {
                                return Explore1ItemWidget();
                              }))
                    ]))));
  }

  onTapDownload1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.favoriteProductScreen);
  }

  onTapNotification1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.notificationOneScreen);
  }
}
