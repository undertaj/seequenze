import 'package:lisha_s_application1/widgets/custom_drop_down.dart';
import 'models/iphone_14_pro_max_two_model.dart';
import 'models/sixtyseven_item_model.dart';
import '../iphone_14_pro_max_two_screen/widgets/sixtyseven_item_widget.dart';
import 'package:lisha_s_application1/widgets/custom_switch.dart';
import 'package:lisha_s_application1/widgets/custom_checkbox_button.dart';
import 'package:lisha_s_application1/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:lisha_s_application1/core/app_export.dart';
import 'bloc/iphone_14_pro_max_two_bloc.dart';

class Iphone14ProMaxTwoScreen extends StatelessWidget {
  const Iphone14ProMaxTwoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone14ProMaxTwoBloc>(
      create: (context) => Iphone14ProMaxTwoBloc(Iphone14ProMaxTwoState(
        iphone14ProMaxTwoModelObj: Iphone14ProMaxTwoModel(),
      ))
        ..add(Iphone14ProMaxTwoInitialEvent()),
      child: Iphone14ProMaxTwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgGroup140,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildWidget(context),
                  SizedBox(height: 20.v),
                  _buildLatte(context),
                  SizedBox(height: 12.v),
                  Container(
                    width: 333.h,
                    margin: EdgeInsets.only(
                      left: 26.h,
                      right: 70.h,
                    ),
                    child: Text(
                      "msg_caff_latte_is_a".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodySmallGray40002,
                    ),
                  ),
                  SizedBox(height: 18.v),
                  Padding(
                    padding: EdgeInsets.only(left: 26.h),
                    child: Text(
                      "msg_choice_of_cup_filling".tr,
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                  SizedBox(height: 14.v),
                  _buildSixtySeven(context),
                  SizedBox(height: 21.v),
                  Padding(
                    padding: EdgeInsets.only(left: 29.h),
                    child: Text(
                      "lbl_choice_of_milk".tr,
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                  SizedBox(height: 23.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 35.h,
                      right: 51.h,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BlocSelector<Iphone14ProMaxTwoBloc,
                            Iphone14ProMaxTwoState, bool?>(
                          selector: (state) => state.isSelectedSwitch,
                          builder: (context, isSelectedSwitch) {
                            return CustomSwitch(
                              margin: EdgeInsets.only(
                                top: 4.v,
                                bottom: 3.v,
                              ),
                              value: isSelectedSwitch,
                              onChange: (value) {
                                context
                                    .read<Iphone14ProMaxTwoBloc>()
                                    .add(ChangeSwitchEvent(value: value));
                              },
                            );
                          },
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 21.h),
                          child: Text(
                            "lbl_skim_milk".tr,
                            style: theme.textTheme.bodyLarge,
                          ),
                        ),
                        Spacer(),
                        SizedBox(
                          width: 162.h,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              BlocSelector<Iphone14ProMaxTwoBloc,
                                  Iphone14ProMaxTwoState, bool?>(
                                selector: (state) => state.isSelectedSwitch1,
                                builder: (context, isSelectedSwitch1) {
                                  return CustomSwitch(
                                    margin: EdgeInsets.only(
                                      top: 2.v,
                                      bottom: 3.v,
                                    ),
                                    value: isSelectedSwitch1,
                                    onChange: (value) {
                                      context.read<Iphone14ProMaxTwoBloc>().add(
                                          ChangeSwitch1Event(value: value));
                                    },
                                  );
                                },
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20.h),
                                child: Text(
                                  "lbl_full_cream_milk".tr,
                                  style: theme.textTheme.bodyLarge,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 7.v),
                  _buildLatte1(context),
                  SizedBox(height: 9.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 34.h,
                      right: 105.h,
                    ),
                    child: Row(
                      children: [
                        BlocSelector<Iphone14ProMaxTwoBloc,
                            Iphone14ProMaxTwoState, bool?>(
                          selector: (state) => state.isSelectedSwitch4,
                          builder: (context, isSelectedSwitch4) {
                            return CustomSwitch(
                              value: isSelectedSwitch4,
                              onChange: (value) {
                                context
                                    .read<Iphone14ProMaxTwoBloc>()
                                    .add(ChangeSwitch4Event(value: value));
                              },
                            );
                          },
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 19.h,
                            top: 7.v,
                          ),
                          child: Text(
                            "lbl_soy_milk".tr,
                            style: theme.textTheme.bodyLarge,
                          ),
                        ),
                        Spacer(),
                        SizedBox(
                          width: 107.h,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              BlocSelector<Iphone14ProMaxTwoBloc,
                                  Iphone14ProMaxTwoState, bool?>(
                                selector: (state) => state.isSelectedSwitch5,
                                builder: (context, isSelectedSwitch5) {
                                  return CustomSwitch(
                                    value: isSelectedSwitch5,
                                    onChange: (value) {
                                      context.read<Iphone14ProMaxTwoBloc>().add(
                                          ChangeSwitch5Event(value: value));
                                    },
                                  );
                                },
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 6.v),
                                child: Text(
                                  "lbl_oat_milk".tr,
                                  style: theme.textTheme.bodyLarge,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16.v),
                  Padding(
                    padding: EdgeInsets.only(left: 35.h),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BlocSelector<Iphone14ProMaxTwoBloc,
                            Iphone14ProMaxTwoState, bool?>(
                          selector: (state) => state.isSelectedSwitch6,
                          builder: (context, isSelectedSwitch6) {
                            return CustomSwitch(
                              margin: EdgeInsets.only(
                                top: 4.v,
                                bottom: 22.v,
                              ),
                              value: isSelectedSwitch6,
                              onChange: (value) {
                                context
                                    .read<Iphone14ProMaxTwoBloc>()
                                    .add(ChangeSwitch6Event(value: value));
                              },
                            );
                          },
                        ),
                        Container(
                          width: 99.h,
                          margin: EdgeInsets.only(left: 21.h),
                          child: Text(
                            "msg_lactose_free_milk".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.bodyLarge,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 22.v),
                  Padding(
                    padding: EdgeInsets.only(left: 26.h),
                    child: Text(
                      "lbl_choice_of_sugar".tr,
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                  SizedBox(height: 22.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 35.h,
                      right: 99.h,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BlocSelector<Iphone14ProMaxTwoBloc,
                            Iphone14ProMaxTwoState, bool?>(
                          selector: (state) => state.isSelectedSwitch7,
                          builder: (context, isSelectedSwitch7) {
                            return CustomSwitch(
                              margin: EdgeInsets.only(
                                top: 3.v,
                                bottom: 5.v,
                              ),
                              value: isSelectedSwitch7,
                              onChange: (value) {
                                context
                                    .read<Iphone14ProMaxTwoBloc>()
                                    .add(ChangeSwitch7Event(value: value));
                              },
                            );
                          },
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 21.h),
                          child: Text(
                            "lbl_sugar_x1".tr,
                            style: theme.textTheme.bodyLarge,
                          ),
                        ),
                        Spacer(),
                        SizedBox(
                          width: 114.h,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              BlocSelector<Iphone14ProMaxTwoBloc,
                                  Iphone14ProMaxTwoState, bool?>(
                                selector: (state) => state.isSelectedSwitch8,
                                builder: (context, isSelectedSwitch8) {
                                  return CustomSwitch(
                                    margin: EdgeInsets.only(
                                      top: 1.v,
                                      bottom: 5.v,
                                    ),
                                    value: isSelectedSwitch8,
                                    onChange: (value) {
                                      context.read<Iphone14ProMaxTwoBloc>().add(
                                          ChangeSwitch8Event(value: value));
                                    },
                                  );
                                },
                              ),
                              Text(
                                "lbl_sugar_x2".tr,
                                style: theme.textTheme.bodyLarge,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 35.h,
                      right: 96.h,
                    ),
                    child: Row(
                      children: [
                        BlocSelector<Iphone14ProMaxTwoBloc,
                            Iphone14ProMaxTwoState, bool?>(
                          selector: (state) => state.isSelectedSwitch9,
                          builder: (context, isSelectedSwitch9) {
                            return CustomSwitch(
                              margin: EdgeInsets.only(bottom: 5.v),
                              value: isSelectedSwitch9,
                              onChange: (value) {
                                context
                                    .read<Iphone14ProMaxTwoBloc>()
                                    .add(ChangeSwitch9Event(value: value));
                              },
                            );
                          },
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 21.h),
                          child: Text(
                            "lbl_sugar".tr,
                            style: theme.textTheme.bodyLarge,
                          ),
                        ),
                        Spacer(),
                        SizedBox(
                          width: 115.h,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              BlocSelector<Iphone14ProMaxTwoBloc,
                                  Iphone14ProMaxTwoState, bool?>(
                                selector: (state) => state.isSelectedSwitch10,
                                builder: (context, isSelectedSwitch10) {
                                  return CustomSwitch(
                                    margin: EdgeInsets.only(
                                      top: 1.v,
                                      bottom: 5.v,
                                    ),
                                    value: isSelectedSwitch10,
                                    onChange: (value) {
                                      context.read<Iphone14ProMaxTwoBloc>().add(
                                          ChangeSwitch10Event(value: value));
                                    },
                                  );
                                },
                              ),
                              Text(
                                "lbl_no_sugar".tr,
                                style: theme.textTheme.bodyLarge,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 35.v),
                  _buildThirtyThree(context),
                  SizedBox(height: 49.v),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildWidget(BuildContext context) {
    return SizedBox(
      height: 372.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle16,
            height: 372.v,
            width: 430.h,
            alignment: Alignment.center,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgRectangle17,
            height: 372.v,
            width: 430.h,
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLatte(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 26.h,
        right: 57.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl_latt".tr,
                style: CustomTextStyles.titleMedium18,
              ),
              SizedBox(height: 7.v),
              Row(
                children: [
                  Text(
                    "lbl_4_9".tr,
                    style: CustomTextStyles.bodySmallGray400,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgSignal,
                    height: 10.v,
                    width: 11.h,
                    margin: EdgeInsets.only(
                      left: 12.h,
                      bottom: 2.v,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5.h),
                    child: Text(
                      "lbl_458".tr,
                      style: CustomTextStyles.bodySmallGray400,
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
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 4.v,
              bottom: 13.v,
            ),
            child: BlocSelector<Iphone14ProMaxTwoBloc, Iphone14ProMaxTwoState,
                Iphone14ProMaxTwoModel?>(
              selector: (state) => state.iphone14ProMaxTwoModelObj,
              builder: (context, iphone14ProMaxTwoModelObj) {
                return CustomDropDown(
                  width: 53.h,
                  hintText: "lbl_1".tr,
                  items: iphone14ProMaxTwoModelObj?.dropdownItemList ?? [],
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSixtySeven(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 34.h),
      child: BlocSelector<Iphone14ProMaxTwoBloc, Iphone14ProMaxTwoState,
          Iphone14ProMaxTwoModel?>(
        selector: (state) => state.iphone14ProMaxTwoModelObj,
        builder: (context, iphone14ProMaxTwoModelObj) {
          return Wrap(
            runSpacing: 10.v,
            spacing: 10.h,
            children: List<Widget>.generate(
              iphone14ProMaxTwoModelObj?.sixtysevenItemList.length ?? 0,
              (index) {
                SixtysevenItemModel model =
                    iphone14ProMaxTwoModelObj?.sixtysevenItemList[index] ??
                        SixtysevenItemModel();

                return SixtysevenItemWidget(
                  model,
                  onSelectedChipView: (value) {
                    context.read<Iphone14ProMaxTwoBloc>().add(
                        UpdateChipViewEvent(index: index, isSelected: value));
                  },
                );
              },
            ),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildLatte1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 34.h,
        right: 51.h,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          BlocSelector<Iphone14ProMaxTwoBloc, Iphone14ProMaxTwoState, bool?>(
            selector: (state) => state.isSelectedSwitch2,
            builder: (context, isSelectedSwitch2) {
              return CustomSwitch(
                value: isSelectedSwitch2,
                onChange: (value) {
                  context
                      .read<Iphone14ProMaxTwoBloc>()
                      .add(ChangeSwitch2Event(value: value));
                },
              );
            },
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20.h,
              top: 7.v,
            ),
            child: Text(
              "lbl_almond_milk".tr,
              style: theme.textTheme.bodyLarge,
            ),
          ),
          Spacer(),
          Container(
            width: 160.h,
            margin: EdgeInsets.only(top: 7.v),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BlocSelector<Iphone14ProMaxTwoBloc, Iphone14ProMaxTwoState,
                    bool?>(
                  selector: (state) => state.isSelectedSwitch3,
                  builder: (context, isSelectedSwitch3) {
                    return CustomSwitch(
                      margin: EdgeInsets.only(
                        top: 2.v,
                        bottom: 3.v,
                      ),
                      value: isSelectedSwitch3,
                      onChange: (value) {
                        context
                            .read<Iphone14ProMaxTwoBloc>()
                            .add(ChangeSwitch3Event(value: value));
                      },
                    );
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(left: 18.h),
                  child: Text(
                    "lbl_full_cream_milk".tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildThirtyThree(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: EdgeInsets.only(
          left: 26.h,
          right: 30.h,
        ),
        padding: EdgeInsets.symmetric(vertical: 13.v),
        decoration: AppDecoration.outlineBlack900.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder17,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 13.v,
                bottom: 10.v,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BlocSelector<Iphone14ProMaxTwoBloc, Iphone14ProMaxTwoState,
                      bool?>(
                    selector: (state) => state.highPriority,
                    builder: (context, highPriority) {
                      return CustomCheckboxButton(
                        text: "lbl_high_priority".tr,
                        value: highPriority,
                        onChange: (value) {
                          context
                              .read<Iphone14ProMaxTwoBloc>()
                              .add(ChangeCheckBoxEvent(value: value));
                        },
                      );
                    },
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgError1,
                    height: 15.adaptSize,
                    width: 15.adaptSize,
                    margin: EdgeInsets.only(
                      left: 3.h,
                      top: 3.v,
                      bottom: 2.v,
                    ),
                  ),
                ],
              ),
            ),
            CustomElevatedButton(
              width: 146.h,
              text: "lbl_submit".tr,
              buttonStyle: CustomButtonStyles.none,
              decoration: CustomButtonStyles.gradientGreenEToGreenDecoration,
            ),
          ],
        ),
      ),
    );
  }
}
