import 'package:flutter/cupertino.dart';
import 'package:lisha_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:lisha_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:lisha_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:lisha_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:lisha_s_application1/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:lisha_s_application1/widgets/app_bar/appbar_trailing_circleimage.dart';
import 'package:lisha_s_application1/widgets/custom_search_view.dart';
import 'widgets/innervone_item_widget.dart';
import 'models/innervone_item_model.dart';
import 'models/inner_vone_model.dart';
import 'package:flutter/material.dart';
import 'package:lisha_s_application1/core/app_export.dart';
import 'bloc/inner_vone_bloc.dart';

// ignore_for_file: must_be_immutable
class InnerVonePage extends StatelessWidget {
  const InnerVonePage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<InnerVoneBloc>(
      create: (context) => InnerVoneBloc(InnerVoneState(
        innerVoneModelObj: InnerVoneModel(),
      ))
        ..add(InnerVoneInitialEvent()),
      child: InnerVonePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.transparent,
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              // begin: Alignment(0.5, 0),
              // end: Alignment(0.5, 1),
              colors: [
                appTheme.indigoA20000,
                appTheme.red30082,
              ],
            ),
          ),
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 27.v),
            child: SizedBox(
              height: 831.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 20.h, top: 35, right: 20.h),
                                    child: BlocSelector<
                                        InnerVoneBloc,
                                        InnerVoneState,
                                        TextEditingController?>(
                                      selector: (state) =>
                                          state.searchController,
                                      builder: (context, searchController) {
                                        return CustomSearchView(
                                          controller: searchController,
                                          hintText: "msg_search_favorite".tr,
                                        );
                                      },
                                    ),
                                  ),
                                  SizedBox(height: 305.v),
                                  Text(
                                    "msg_get_it_instantly".tr,
                                    style:
                                        CustomTextStyles.titleMediumGray40001,
                                  ),
                                  SizedBox(height: 8.v),
                                  Padding(
                                    padding: EdgeInsets.only(left: 4.h),
                                    child: _buildLatte(
                                      context,
                                      latte: "lbl_latt".tr,
                                      fortyNine: "lbl_4_9".tr,
                                      fourHundredFiftyEight: "lbl_458".tr,
                                      description: "msg_caff_latte_is_a".tr,
                                      image: ImageConstant.imgRectangle10,
                                      aDD: "lbl_add".tr,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 4.h),
                                    child: _buildLatte(
                                      context,
                                      latte: "lbl_flat_white".tr,
                                      fortyNine: "lbl_4_9".tr,
                                      fourHundredFiftyEight: "lbl_458".tr,
                                      description: "msg_caff_latte_is_a".tr,
                                      image: ImageConstant.imgRectangle14,
                                      aDD: "lbl_add".tr,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                        ],
                      ),

                  Container(
                    margin: EdgeInsets.only(top: 76.v),
                    padding: EdgeInsets.only(top: 20.h, left: 20.h, right: 195.h),
                    child: Text(
                      "Most Popular Beverages",
                      style:
                      CustomTextStyles.titleMediumGray40001,
                    ),

                  ),
                  Positioned(
                    top: 110.v,
                      child: SingleChildScrollView(
                        child: Row(

                          children: [
                            Beverage(imagePath: ImageConstant.imgCoffee21, title: "Hot Cappuchino", description: "Espresso, Steamed Milk", attribute1: "4.9", attribute2: "(458)"),
                            Beverage(imagePath: ImageConstant.imgCoffee21128x131, title: "Hot Cappuchino", description: "Espresso, Steamed Milk", attribute1: "4.9", attribute2: "(458)"),
                            Beverage(imagePath: ImageConstant.imgCoffee211, title: "Hot Cappuchino", description: "Espresso, Steamed Milk", attribute1: "4.9", attribute2: "(458)"),
                          ],
                        ),
                      ),
                  ),
                  // _buildInnerVOne(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 47.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgWavingHandSign1f44b,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 14.v,
          bottom: 14.v,
        ),
      ),
      title: Padding(
        padding: EdgeInsets.only(left: 20.h),
        child: Column(
          children: [
            AppbarSubtitle(
              text: "lbl_20_12_2022".tr,
              margin: EdgeInsets.only(right: 65.h),
            ),
            SizedBox(height: 4.v),
            AppbarTitle(
              text: "lbl_joshua_scanlan".tr,
            ),
          ],
        ),
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgThumbsUp,
          margin: EdgeInsets.only(
            left: 22.h,
            top: 7.v,
            right: 8.h,
          ),
        ),
        AppbarTrailingCircleimage(
          imagePath: ImageConstant.imgEllipse3,
          margin: EdgeInsets.fromLTRB(10.h, 7.v, 30.h, 1.v),
        ),
      ],
    );
  }



  /// Section Widget
  Widget _buildInnerVOne(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: SizedBox(
        height: 831.v,
        child: BlocSelector<InnerVoneBloc, InnerVoneState, InnerVoneModel?>(
          selector: (state) => state.innerVoneModelObj,
          builder: (context, innerVoneModelObj) {
            return ListView.separated(
              padding: EdgeInsets.only(
                top: 140.v,
                bottom: 425.v,
              ),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  width: 15.h,
                );
              },
              itemCount: innerVoneModelObj?.innervoneItemList.length ?? 0,
              itemBuilder: (context, index) {
                InnervoneItemModel model =
                    innerVoneModelObj?.innervoneItemList[index] ??
                        InnervoneItemModel();
                return InnervoneItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildLatte(
    BuildContext context, {
    required String latte,
    required String fortyNine,
    required String fourHundredFiftyEight,
    required String description,
    required String image,
    required String aDD,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 11.v),

      decoration: BoxDecoration(
        // border: Border.all(),
        image: DecorationImage(

          image: AssetImage(
            ImageConstant.bottomBox,

          ),
          // fit: BoxFit.cover,
        ),
        borderRadius: BorderRadiusStyle.roundedBorder14,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 15.v,
              bottom: 31.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  latte,
                  style: CustomTextStyles.titleMediumMedium.copyWith(
                    color: appTheme.blueGray10001,
                  ),
                ),
                SizedBox(height: 7.v),
                Row(
                  children: [
                    Text(
                      fortyNine,
                      style:
                          CustomTextStyles.bodySmallOnPrimaryContainer.copyWith(
                        color: theme.colorScheme.onPrimaryContainer,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgSignal,
                      height: 10.v,
                      width: 11.h,
                      margin: EdgeInsets.only(
                        left: 3.h,
                        bottom: 2.v,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5.h),
                      child: Text(
                        fourHundredFiftyEight,
                        style: CustomTextStyles.bodySmallOnPrimaryContainer
                            .copyWith(
                          color: theme.colorScheme.onPrimaryContainer,
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgImage,
                      height: 14.adaptSize,
                      width: 14.adaptSize,
                      margin: EdgeInsets.only(left: 16.h),
                    ),
                  ],
                ),
                SizedBox(height: 4.v),
                SizedBox(
                  width: 202.h,
                  child: Text(
                    description,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodySmallGray40002.copyWith(
                      color: appTheme.gray40002,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 135.v,
            width: 119.h,
            margin: EdgeInsets.only(top: 10.v),
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                CustomImageView(
                  imagePath: image,
                  height: 122.v,
                  width: 119.h,
                  radius: BorderRadius.circular(
                    7.h,
                  ),
                  alignment: Alignment.topCenter,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    width: 52.h,
                    margin: EdgeInsets.only(right: 30.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 12.h,
                      vertical: 2.v,
                    ),
                    decoration: AppDecoration.fillGreen.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder7,
                    ),
                    child: Text(
                      aDD,
                      style: CustomTextStyles.labelLargeOnPrimary.copyWith(
                        color: theme.colorScheme.onPrimary.withOpacity(1),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
