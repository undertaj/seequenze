import '../models/sixtyseven_item_model.dart';
import 'package:flutter/material.dart';
import 'package:lisha_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class SixtysevenItemWidget extends StatelessWidget {
  SixtysevenItemWidget(
    this.sixtysevenItemModelObj, {
    Key? key,
    this.onSelectedChipView,
  }) : super(
          key: key,
        );

  SixtysevenItemModel sixtysevenItemModelObj;

  Function(bool)? onSelectedChipView;

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 13.h,
        vertical: 6.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        sixtysevenItemModelObj.full!,
        style: TextStyle(
          color: (sixtysevenItemModelObj.isSelected ?? false)
              ? appTheme.blueGray100
              : appTheme.black900,
          fontSize: 12.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        ),
      ),
      selected: (sixtysevenItemModelObj.isSelected ?? false),
      backgroundColor: appTheme.blueGray100,
      selectedColor: appTheme.green500,
      shape: (sixtysevenItemModelObj.isSelected ?? false)
          ? RoundedRectangleBorder(
              side: BorderSide.none,
              borderRadius: BorderRadius.circular(
                4.h,
              ),
            )
          : RoundedRectangleBorder(
              side: BorderSide.none,
              borderRadius: BorderRadius.circular(
                4.h,
              ),
            ),
      onSelected: (value) {
        onSelectedChipView?.call(value);
      },
    );
  }
}
