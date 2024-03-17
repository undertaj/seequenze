import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Gradient button style
  static BoxDecoration get gradientGreenEToGreenDecoration => BoxDecoration(
        borderRadius: BorderRadius.circular(7.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment(0.05, 0),
          end: Alignment(0.91, 0),
          colors: [
            appTheme.green800E0,
            appTheme.green500.withOpacity(0.88),
          ],
        ),
      );
  static BoxDecoration get gradientPrimaryToGrayDecoration => BoxDecoration(
        borderRadius: BorderRadius.circular(24.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.65),
            spreadRadius: -2.h,
            blurRadius: 15.h,
            offset: Offset(
              2,
              2,
            ),
          ),
        ],
        // gradient: LinearGradient(
        //   begin: Alignment(0.0, 0),
        //   end: Alignment(1.0, 0),
        //   colors: [
        //     theme.colorScheme.primary,
        //     appTheme.gray600,
        //   ],
        // ),
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
