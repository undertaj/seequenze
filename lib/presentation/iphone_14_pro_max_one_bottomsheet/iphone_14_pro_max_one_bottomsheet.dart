import 'package:lisha_s_application1/widgets/custom_drop_down.dart';
import 'models/iphone_14_pro_max_one_model.dart';
import 'models/seventyone_item_model.dart';
import '../iphone_14_pro_max_one_bottomsheet/widgets/seventyone_item_widget.dart';
import 'package:lisha_s_application1/widgets/custom_switch.dart';
import 'package:lisha_s_application1/widgets/custom_checkbox_button.dart';
import 'package:lisha_s_application1/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:lisha_s_application1/core/app_export.dart';
import 'bloc/iphone_14_pro_max_one_bloc.dart';

// ignore_for_file: must_be_immutable
class Iphone14ProMaxOneBottomsheet extends StatelessWidget {
  const Iphone14ProMaxOneBottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone14ProMaxOneBloc>(
      create: (context) => Iphone14ProMaxOneBloc(Iphone14ProMaxOneState(
        iphone14ProMaxOneModelObj: Iphone14ProMaxOneModel(),
      ))
        ..add(Iphone14ProMaxOneInitialEvent()),
      child: Iphone14ProMaxOneBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: 689.v,
        width: double.maxFinite,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Opacity(
              opacity: 0.1,
              child: CustomImageView(
                imagePath: ImageConstant.imgRectangle689x430,
                height: 689.v,
                width: 430.h,
                radius: BorderRadius.circular(
                  29.h,
                ),
                alignment: Alignment.center,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildLatte(context),
                  SizedBox(height: 12.v),
                  Container(
                    width: 333.h,
                    margin: EdgeInsets.only(right: 40.h),
                    child: Text(
                      "msg_caff_latte_is_a".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodySmallGray40002,
                    ),
                  ),
                  SizedBox(height: 18.v),
                  Text(
                    "msg_choice_of_cup_filling".tr,
                    style: theme.textTheme.titleMedium,
                  ),
                  SizedBox(height: 14.v),
                  _buildSeventyOne(context),
                  SizedBox(height: 21.v),
                  Padding(
                    padding: EdgeInsets.only(left: 3.h),
                    child: Text(
                      "lbl_choice_of_milk".tr,
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                  SizedBox(height: 23.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 9.h,
                      right: 21.h,
                    ),
                    child: Row(
                      children: [
                        BlocSelector<Iphone14ProMaxOneBloc,
                            Iphone14ProMaxOneState, bool?>(
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
                                    .read<Iphone14ProMaxOneBloc>()
                                    .add(ChangeSwitchEvent(value: value));
                              },
                            );
                          },
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 21.h,
                            bottom: 1.v,
                          ),
                          child: Text(
                            "lbl_skim_milk".tr,
                            style: theme.textTheme.bodyLarge,
                          ),
                        ),
                        BlocSelector<Iphone14ProMaxOneBloc,
                            Iphone14ProMaxOneState, bool?>(
                          selector: (state) => state.isSelectedSwitch1,
                          builder: (context, isSelectedSwitch1) {
                            return CustomSwitch(
                              margin: EdgeInsets.only(
                                left: 61.h,
                                top: 4.v,
                                bottom: 3.v,
                              ),
                              value: isSelectedSwitch1,
                              onChange: (value) {
                                context
                                    .read<Iphone14ProMaxOneBloc>()
                                    .add(ChangeSwitch1Event(value: value));
                              },
                            );
                          },
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 20.h,
                            top: 1.v,
                          ),
                          child: Text(
                            "lbl_full_cream_milk".tr,
                            style: theme.textTheme.bodyLarge,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 7.v),
                  _buildNinetyEight(context),
                  SizedBox(height: 9.v),
                  Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: Row(
                      children: [
                        BlocSelector<Iphone14ProMaxOneBloc,
                            Iphone14ProMaxOneState, bool?>(
                          selector: (state) => state.isSelectedSwitch4,
                          builder: (context, isSelectedSwitch4) {
                            return CustomSwitch(
                              value: isSelectedSwitch4,
                              onChange: (value) {
                                context
                                    .read<Iphone14ProMaxOneBloc>()
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
                        BlocSelector<Iphone14ProMaxOneBloc,
                            Iphone14ProMaxOneState, bool?>(
                          selector: (state) => state.isSelectedSwitch5,
                          builder: (context, isSelectedSwitch5) {
                            return CustomSwitch(
                              margin: EdgeInsets.only(left: 70.h),
                              value: isSelectedSwitch5,
                              onChange: (value) {
                                context
                                    .read<Iphone14ProMaxOneBloc>()
                                    .add(ChangeSwitch5Event(value: value));
                              },
                            );
                          },
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 16.h,
                            top: 6.v,
                          ),
                          child: Text(
                            "lbl_oat_milk".tr,
                            style: theme.textTheme.bodyLarge,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16.v),
                  Padding(
                    padding: EdgeInsets.only(left: 9.h),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BlocSelector<Iphone14ProMaxOneBloc,
                            Iphone14ProMaxOneState, bool?>(
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
                                    .read<Iphone14ProMaxOneBloc>()
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
                  Text(
                    "lbl_choice_of_sugar".tr,
                    style: theme.textTheme.titleMedium,
                  ),
                  SizedBox(height: 22.v),
                  Padding(
                    padding: EdgeInsets.only(left: 9.h),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BlocSelector<Iphone14ProMaxOneBloc,
                            Iphone14ProMaxOneState, bool?>(
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
                                    .read<Iphone14ProMaxOneBloc>()
                                    .add(ChangeSwitch7Event(value: value));
                              },
                            );
                          },
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 21.h,
                            bottom: 2.v,
                          ),
                          child: Text(
                            "lbl_sugar_x1".tr,
                            style: theme.textTheme.bodyLarge,
                          ),
                        ),
                        BlocSelector<Iphone14ProMaxOneBloc,
                            Iphone14ProMaxOneState, bool?>(
                          selector: (state) => state.isSelectedSwitch8,
                          builder: (context, isSelectedSwitch8) {
                            return CustomSwitch(
                              margin: EdgeInsets.only(
                                left: 69.h,
                                top: 3.v,
                                bottom: 5.v,
                              ),
                              value: isSelectedSwitch8,
                              onChange: (value) {
                                context
                                    .read<Iphone14ProMaxOneBloc>()
                                    .add(ChangeSwitch8Event(value: value));
                              },
                            );
                          },
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 20.h,
                            top: 2.v,
                          ),
                          child: Text(
                            "lbl_sugar_x2".tr,
                            style: theme.textTheme.bodyLarge,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15.v),
                  Padding(
                    padding: EdgeInsets.only(left: 9.h),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BlocSelector<Iphone14ProMaxOneBloc,
                            Iphone14ProMaxOneState, bool?>(
                          selector: (state) => state.isSelectedSwitch9,
                          builder: (context, isSelectedSwitch9) {
                            return CustomSwitch(
                              margin: EdgeInsets.only(
                                top: 1.v,
                                bottom: 5.v,
                              ),
                              value: isSelectedSwitch9,
                              onChange: (value) {
                                context
                                    .read<Iphone14ProMaxOneBloc>()
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
                        BlocSelector<Iphone14ProMaxOneBloc,
                            Iphone14ProMaxOneState, bool?>(
                          selector: (state) => state.isSelectedSwitch10,
                          builder: (context, isSelectedSwitch10) {
                            return CustomSwitch(
                              margin: EdgeInsets.only(
                                left: 72.h,
                                top: 1.v,
                                bottom: 5.v,
                              ),
                              value: isSelectedSwitch10,
                              onChange: (value) {
                                context
                                    .read<Iphone14ProMaxOneBloc>()
                                    .add(ChangeSwitch10Event(value: value));
                              },
                            );
                          },
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 18.h),
                          child: Text(
                            "lbl_no_sugar".tr,
                            style: theme.textTheme.bodyLarge,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 35.v),
                  _buildTwentyFour(context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLatte(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 27.h),
      child: Row(
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
              left: 188.h,
              top: 4.v,
              bottom: 13.v,
            ),
            child: BlocSelector<Iphone14ProMaxOneBloc, Iphone14ProMaxOneState,
                Iphone14ProMaxOneModel?>(
              selector: (state) => state.iphone14ProMaxOneModelObj,
              builder: (context, iphone14ProMaxOneModelObj) {
                return CustomDropDown(
                  width: 53.h,
                  hintText: "lbl_1".tr,
                  items: iphone14ProMaxOneModelObj?.dropdownItemList ?? [],
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSeventyOne(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8.h),
      child: BlocSelector<Iphone14ProMaxOneBloc, Iphone14ProMaxOneState,
          Iphone14ProMaxOneModel?>(
        selector: (state) => state.iphone14ProMaxOneModelObj,
        builder: (context, iphone14ProMaxOneModelObj) {
          return Wrap(
            runSpacing: 10.v,
            spacing: 10.h,
            children: List<Widget>.generate(
              iphone14ProMaxOneModelObj?.seventyoneItemList.length ?? 0,
              (index) {
                SeventyoneItemModel model =
                    iphone14ProMaxOneModelObj?.seventyoneItemList[index] ??
                        SeventyoneItemModel();

                return SeventyoneItemWidget(
                  model,
                  onSelectedChipView: (value) {
                    context.read<Iphone14ProMaxOneBloc>().add(
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
  Widget _buildNinetyEight(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 8.h,
        right: 21.h,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          BlocSelector<Iphone14ProMaxOneBloc, Iphone14ProMaxOneState, bool?>(
            selector: (state) => state.isSelectedSwitch2,
            builder: (context, isSelectedSwitch2) {
              return CustomSwitch(
                value: isSelectedSwitch2,
                onChange: (value) {
                  context
                      .read<Iphone14ProMaxOneBloc>()
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
          BlocSelector<Iphone14ProMaxOneBloc, Iphone14ProMaxOneState, bool?>(
            selector: (state) => state.isSelectedSwitch3,
            builder: (context, isSelectedSwitch3) {
              return CustomSwitch(
                margin: EdgeInsets.only(
                  left: 42.h,
                  top: 10.v,
                  bottom: 4.v,
                ),
                value: isSelectedSwitch3,
                onChange: (value) {
                  context
                      .read<Iphone14ProMaxOneBloc>()
                      .add(ChangeSwitch3Event(value: value));
                },
              );
            },
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 18.h,
              top: 7.v,
            ),
            child: Text(
              "lbl_full_cream_milk".tr,
              style: theme.textTheme.bodyLarge,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTwentyFour(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.outlineBlack900.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder17,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 143.h,
            margin: EdgeInsets.only(
              left: 25.h,
              top: 13.v,
              bottom: 10.v,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                BlocSelector<Iphone14ProMaxOneBloc, Iphone14ProMaxOneState,
                    bool?>(
                  selector: (state) => state.highPriority,
                  builder: (context, highPriority) {
                    return CustomCheckboxButton(
                      text: "lbl_high_priority".tr,
                      value: highPriority,
                      onChange: (value) {
                        context
                            .read<Iphone14ProMaxOneBloc>()
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
            margin: EdgeInsets.only(left: 32.h),
            buttonStyle: CustomButtonStyles.none,
            decoration: CustomButtonStyles.gradientGreenEToGreenDecoration,
          ),
        ],
      ),
    );
  }
}
