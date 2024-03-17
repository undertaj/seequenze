// ignore_for_file: must_be_immutable

part of 'swift_cafe_vone_bloc.dart';

/// Represents the state of SwiftCafeVone in the application.
class SwiftCafeVoneState extends Equatable {
  SwiftCafeVoneState({
    this.userNameController,
    this.passwordController,
    this.swiftCafeVoneModelObj,
  });

  TextEditingController? userNameController;

  TextEditingController? passwordController;

  SwiftCafeVoneModel? swiftCafeVoneModelObj;

  @override
  List<Object?> get props => [
        userNameController,
        passwordController,
        swiftCafeVoneModelObj,
      ];



  SwiftCafeVoneState copyWith({
    TextEditingController? userNameController,
    TextEditingController? passwordController,
    SwiftCafeVoneModel? swiftCafeVoneModelObj,
  }) {
    return SwiftCafeVoneState(
      userNameController: userNameController ?? this.userNameController,
      passwordController: passwordController ?? this.passwordController,
      swiftCafeVoneModelObj:
          swiftCafeVoneModelObj ?? this.swiftCafeVoneModelObj,
    );
  }
}
