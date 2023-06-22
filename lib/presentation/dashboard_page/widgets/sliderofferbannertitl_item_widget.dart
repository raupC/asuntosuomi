import 'package:myapp/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SliderofferbannertitlItemWidget extends StatelessWidget {
  SliderofferbannertitlItemWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(
        206,
      ),
      width: getHorizontalSize(
        343,
      ),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgPromotionimage206x343,
            height: getVerticalSize(
              206,
            ),
            width: getHorizontalSize(
              343,
            ),
            radius: BorderRadius.circular(
              getHorizontalSize(
                5,
              ),
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: getPadding(
                left: 24,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: getHorizontalSize(
                      209,
                    ),
                    child: Text(
                      "Super Flash Sale\n50% Off",
                      maxLines: null,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsBold24.copyWith(
                        letterSpacing: getHorizontalSize(
                          0.5,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 31,
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: getHorizontalSize(
                            42,
                          ),
                          padding: getPadding(
                            left: 9,
                            top: 8,
                            right: 9,
                            bottom: 8,
                          ),
                          decoration: AppDecoration.txtFillWhiteA700.copyWith(
                            borderRadius: BorderRadiusStyle.txtRoundedBorder5,
                          ),
                          child: Text(
                            "08",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsBold16.copyWith(
                              letterSpacing: getHorizontalSize(
                                0.5,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 4,
                            top: 10,
                            bottom: 9,
                          ),
                          child: Text(
                            ":",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsBold14WhiteA700.copyWith(
                              letterSpacing: getHorizontalSize(
                                0.07,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: getHorizontalSize(
                            42,
                          ),
                          margin: getMargin(
                            left: 4,
                          ),
                          padding: getPadding(
                            left: 9,
                            top: 8,
                            right: 9,
                            bottom: 8,
                          ),
                          decoration: AppDecoration.txtFillWhiteA700.copyWith(
                            borderRadius: BorderRadiusStyle.txtRoundedBorder5,
                          ),
                          child: Text(
                            "34",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsBold16.copyWith(
                              letterSpacing: getHorizontalSize(
                                0.5,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 4,
                            top: 10,
                            bottom: 9,
                          ),
                          child: Text(
                            ":",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsBold14WhiteA700.copyWith(
                              letterSpacing: getHorizontalSize(
                                0.07,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: getHorizontalSize(
                            42,
                          ),
                          margin: getMargin(
                            left: 4,
                          ),
                          padding: getPadding(
                            left: 10,
                            top: 8,
                            right: 10,
                            bottom: 8,
                          ),
                          decoration: AppDecoration.txtFillWhiteA700.copyWith(
                            borderRadius: BorderRadiusStyle.txtRoundedBorder5,
                          ),
                          child: Text(
                            "52",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsBold16.copyWith(
                              letterSpacing: getHorizontalSize(
                                0.5,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
