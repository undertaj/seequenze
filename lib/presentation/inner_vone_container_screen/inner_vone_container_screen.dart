import 'package:lisha_s_application1/presentation/inner_vone_page/inner_vone_page.dart';
import 'package:lisha_s_application1/widgets/custom_bottom_bar.dart';
import 'models/inner_vone_container_model.dart';
import 'package:flutter/material.dart';
import 'package:lisha_s_application1/core/app_export.dart';
import 'bloc/inner_vone_container_bloc.dart';

// ignore_for_file: must_be_immutable
class InnerVoneContainerScreen extends StatelessWidget {
  InnerVoneContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<InnerVoneContainerBloc>(
        create: (context) =>
        InnerVoneContainerBloc(InnerVoneContainerState(
            innerVoneContainerModelObj: InnerVoneContainerModel()))
          ..add(InnerVoneContainerInitialEvent()),
        child: InnerVoneContainerScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InnerVoneContainerBloc, InnerVoneContainerState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              extendBody: true,
              extendBodyBehindAppBar: true,
              body: Container(
                  width: SizeUtils.width,
                  height: SizeUtils.height,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/background_glass.png'),
                        fit: BoxFit.cover),
                      gradient: LinearGradient(
                          begin: Alignment(0.5, 0),
                          end: Alignment(0.5, 1),
                          colors: [appTheme.indigoA20000, appTheme.red30082])),
                  child: Navigator(
                      key: navigatorKey,
                      initialRoute: AppRoutes.innerVonePage,
                      onGenerateRoute: (routeSetting) => PageRouteBuilder(
                          pageBuilder: (ctx, ani, ani1) =>
                              getCurrentPage(context, routeSetting.name!),
                          transitionDuration: Duration(seconds: 0)
                      )
                  )
              ),
              bottomNavigationBar: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 28.h),
                  child: _buildBottomBar(context))));
    });
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.innerVonePage;
      case BottomBarEnum.Lock:
        return "/";
      case BottomBarEnum.User:
        return "/";
      case BottomBarEnum.Thumbsuponprimary:
        return "/";
      case BottomBarEnum.Television:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.innerVonePage:
        return InnerVonePage.builder(context);
      default:
        return DefaultWidget();
    }
  }
}
