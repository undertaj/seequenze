// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'package:lisha_s_application1/core/app_export.dart';
import 'seventyone_item_model.dart';

/// This class defines the variables used in the [iphone_14_pro_max_one_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class Iphone14ProMaxOneModel extends Equatable {
  Iphone14ProMaxOneModel({
    this.dropdownItemList = const [],
    this.seventyoneItemList = const [],
  }) {}

  List<SelectionPopupModel> dropdownItemList;

  List<SeventyoneItemModel> seventyoneItemList;

  Iphone14ProMaxOneModel copyWith({
    List<SelectionPopupModel>? dropdownItemList,
    List<SeventyoneItemModel>? seventyoneItemList,
  }) {
    return Iphone14ProMaxOneModel(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
      seventyoneItemList: seventyoneItemList ?? this.seventyoneItemList,
    );
  }

  @override
  List<Object?> get props => [dropdownItemList, seventyoneItemList];
}
