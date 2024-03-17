// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class is used in the [seventyone_item_widget] screen.
class SeventyoneItemModel extends Equatable {
  SeventyoneItemModel({
    this.full,
    this.isSelected,
  }) {
    full = full ?? "Full";
    isSelected = isSelected ?? false;
  }

  String? full;

  bool? isSelected;

  SeventyoneItemModel copyWith({
    String? full,
    bool? isSelected,
  }) {
    return SeventyoneItemModel(
      full: full ?? this.full,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [full, isSelected];
}
