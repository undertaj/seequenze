import '../models/seventyone_item_model.dart';
import 'package:flutter/material.dart';
import 'package:lisha_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class SeventyoneItemWidget extends StatelessWidget {
  SeventyoneItemWidget(
    this.seventyoneItemModelObj, {
    Key? key,
    this.onSelectedChipView,
  }) : super(
          key: key,
        );

  SeventyoneItemModel seventyoneItemModelObj;

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
        seventyoneItemModelObj.full!,
        style: TextStyle(
          color: (seventyoneItemModelObj.isSelected ?? false)
              ? appTheme.blueGray100
              : appTheme.black900,
          fontSize: 12.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        ),
      ),
      selected: (seventyoneItemModelObj.isSelected ?? false),
      backgroundColor: appTheme.blueGray100,
      selectedColor: appTheme.green500,
      shape: (seventyoneItemModelObj.isSelected ?? false)
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
