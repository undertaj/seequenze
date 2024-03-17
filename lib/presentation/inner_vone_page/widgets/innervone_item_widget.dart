import '../models/innervone_item_model.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:lisha_s_application1/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:lisha_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class InnervoneItemWidget extends StatelessWidget {
  InnervoneItemWidget(
    this.innervoneItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  InnervoneItemModel innervoneItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 213.h,
      child: Align(
        alignment: Alignment.topLeft,
        child: SizedBox(
          height: 266.v,
          width: 213.h,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: OutlineGradientButton(
                  padding: EdgeInsets.only(
                    left: 1.h,
                    top: 1.v,
                    right: 1.h,
                    bottom: 1.v,
                  ),
                  strokeWidth: 1.h,
                  gradient: LinearGradient(
                    begin: Alignment(0.01, 0.02),
                    end: Alignment(0.96, 0.98),
                    colors: [
                      theme.colorScheme.onPrimary.withOpacity(1),
                      theme.colorScheme.onPrimary.withOpacity(0.29),
                      theme.colorScheme.onPrimary.withOpacity(0.35),
                    ],
                  ),
                  corners: Corners(
                    topLeft: Radius.circular(5),
                    topRight: Radius.circular(5),
                    bottomLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5),
                  ),
                  child: Container(
                    height: 265.v,
                    width: 213.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        5.h,
                      ),
                      gradient: LinearGradient(
                        begin: Alignment(0, 0.02),
                        end: Alignment(0.97, 1),
                        colors: [
                          theme.colorScheme.onPrimary,
                          theme.colorScheme.onPrimary.withOpacity(0.18),
                          theme.colorScheme.onPrimary.withOpacity(0.3),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: 265.v,
                  width: 213.h,
                  child: Stack(
                    alignment: Alignment.centerRight,
                    children: [
                      Opacity(
                        opacity: 0.1,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgRectangle265x213,
                          height: 265.v,
                          width: 213.h,
                          alignment: Alignment.center,
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: SizedBox(
                          height: 217.v,
                          width: 172.h,
                          child: Stack(
                            alignment: Alignment.topLeft,
                            children: [
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: SizedBox(
                                  height: 30.v,
                                  width: 79.h,
                                  child: Stack(
                                    alignment: Alignment.centerRight,
                                    children: [
                                      Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Row(
                                          children: [
                                            Text(
                                              innervoneItemModelObj.fortyNine!,
                                              style: theme.textTheme.bodySmall,
                                            ),
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgSignal,
                                              height: 10.v,
                                              width: 11.h,
                                              margin: EdgeInsets.only(
                                                left: 3.h,
                                                bottom: 2.v,
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 5.h),
                                              child: Text(
                                                innervoneItemModelObj
                                                    .fourHundredFiftyEight!,
                                                style:
                                                    theme.textTheme.bodySmall,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      CustomIconButton(
                                        height: 30.adaptSize,
                                        width: 30.adaptSize,
                                        padding: EdgeInsets.all(7.h),
                                        alignment: Alignment.centerRight,
                                        child: CustomImageView(
                                          imagePath: ImageConstant.imgClose,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(right: 30.h),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                        imagePath: innervoneItemModelObj
                                            ?.hotCappuccino,
                                        height: 128.v,
                                        width: 131.h,
                                      ),
                                      SizedBox(height: 29.v),
                                      Text(
                                        innervoneItemModelObj.joshuaScanlan!,
                                        style:
                                            CustomTextStyles.titleMediumMedium,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(bottom: 22.v),
                                  child: Text(
                                    innervoneItemModelObj.joshuaScanlan1!,
                                    style: CustomTextStyles.bodySmallOnError,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
