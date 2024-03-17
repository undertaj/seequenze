// ignore_for_file: must_be_immutable

part of 'inner_vone_bloc.dart';

/// Represents the state of InnerVone in the application.
class InnerVoneState extends Equatable {
  InnerVoneState({
    this.searchController,
    this.innerVoneModelObj,
  });

  TextEditingController? searchController;

  InnerVoneModel? innerVoneModelObj;

  @override
  List<Object?> get props => [
        searchController,
        innerVoneModelObj,
      ];

  InnerVoneState copyWith({
    TextEditingController? searchController,
    InnerVoneModel? innerVoneModelObj,
  }) {
    return InnerVoneState(
      searchController: searchController ?? this.searchController,
      innerVoneModelObj: innerVoneModelObj ?? this.innerVoneModelObj,
    );
  }
}
