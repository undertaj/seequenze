// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'package:lisha_s_application1/core/app_export.dart';
import 'sixtyseven_item_model.dart';

/// This class defines the variables used in the [iphone_14_pro_max_two_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class Iphone14ProMaxTwoModel extends Equatable {
  Iphone14ProMaxTwoModel({
    this.dropdownItemList = const [],
    this.sixtysevenItemList = const [],
  }) {}

  List<SelectionPopupModel> dropdownItemList;

  List<SixtysevenItemModel> sixtysevenItemList;

  Iphone14ProMaxTwoModel copyWith({
    List<SelectionPopupModel>? dropdownItemList,
    List<SixtysevenItemModel>? sixtysevenItemList,
  }) {
    return Iphone14ProMaxTwoModel(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
      sixtysevenItemList: sixtysevenItemList ?? this.sixtysevenItemList,
    );
  }

  @override
  List<Object?> get props => [dropdownItemList, sixtysevenItemList];
}
