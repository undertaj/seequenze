import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import '../core/app_export.dart';

class CustomSwitch extends StatelessWidget {
  CustomSwitch({
    Key? key,
    required this.onChange,
    this.alignment,
    this.value,
    this.width,
    this.height,
    this.margin,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  bool? value;

  final Function(bool) onChange;

  final double? width  ;

  final double? height ;

  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(

        height: height ?? 13.23,
        width: width ?? 24.92,
        color: Colors.green,
        margin: margin,
        child: alignment != null
            ? Align(
                alignment: alignment ?? Alignment.center,
                child: switchWidget,
              )
            : switchWidget);
  }

  Widget get switchWidget => Switch(

    trackOutlineColor: MaterialStateProperty.all<Color>(Color(0xff929292)),
    activeThumbImage: AssetImage('assets/images/switch_thumb_on.png'),
    inactiveThumbImage: AssetImage('assets/images/switch_thumb_off.png'),
        thumbColor: MaterialStateProperty.all<Color>(Colors.white),

        // focusColor: LinearGradient(
        //   begin: Alignment(0.05, 0),
        //   end: Alignment(0.91, 0),
        //   colors: [
        //     appTheme.green800E0,
        //     appTheme.green500.withOpacity(0.88),
        //   ],
        // ).colors.last,
        activeColor: LinearGradient(
          // begin: Alignment(0.05, 0),
          // end: Alignment(0.91, 0),
          colors: [
            Color.fromRGBO(35, 133, 68, 1),
            Color.fromRGBO(81, 224, 104, 1),
          ],
        ).colors.first,
        inactiveTrackColor: Color.fromRGBO(143, 143, 143, 1),
        activeTrackColor: Color.fromRGBO(57, 177, 117, 1),

        value: value ?? false,
        onChanged: (value) {
          onChange(value);
        },
      );
}
