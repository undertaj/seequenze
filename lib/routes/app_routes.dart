import 'package:flutter/material.dart';
import '../presentation/inner_vone_container_screen/inner_vone_container_screen.dart';
import '../presentation/inner_vone_page/inner_vone_page.dart';
import '../presentation/iphone_14_pro_max_two_screen/iphone_14_pro_max_two_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/swift_cafe_vone_dialog/swift_cafe_vone_dialog.dart';

class AppRoutes {
  static const String innerVoneContainerScreen = '/inner_vone_container_screen';

  static const String innerVonePage = '/inner_vone_page';

  static const String iphone14ProMaxTwoScreen = '/iphone_14_pro_max_two_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String swiftCafeScreen = '/swift_cafe_vone_dialog';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        innerVonePage: InnerVonePage.builder,
        innerVoneContainerScreen: InnerVoneContainerScreen.builder,
        iphone14ProMaxTwoScreen: Iphone14ProMaxTwoScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        swiftCafeScreen: SwiftCafeVoneDialog.builder,
        initialRoute: InnerVoneContainerScreen.builder
      };
}
