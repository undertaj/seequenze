// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class is used in the [sixtyseven_item_widget] screen.
class SixtysevenItemModel extends Equatable {
  SixtysevenItemModel({
    this.full,
    this.isSelected,
  }) {
    full = full ?? "Full";
    isSelected = isSelected ?? false;
  }

  String? full;

  bool? isSelected;

  SixtysevenItemModel copyWith({
    String? full,
    bool? isSelected,
  }) {
    return SixtysevenItemModel(
      full: full ?? this.full,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [full, isSelected];
}
