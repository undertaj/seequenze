// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'innervone_item_model.dart';

/// This class defines the variables used in the [inner_vone_page],
/// and is typically used to hold data that is passed between different parts of the application.
class InnerVoneModel extends Equatable {
  InnerVoneModel({this.innervoneItemList = const []}) {}

  List<InnervoneItemModel> innervoneItemList;

  InnerVoneModel copyWith({List<InnervoneItemModel>? innervoneItemList}) {
    return InnerVoneModel(
      innervoneItemList: innervoneItemList ?? this.innervoneItemList,
    );
  }

  @override
  List<Object?> get props => [innervoneItemList];
}
