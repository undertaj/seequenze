import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/innervone_item_model.dart';
import 'package:lisha_s_application1/presentation/inner_vone_page/models/inner_vone_model.dart';
part 'inner_vone_event.dart';
part 'inner_vone_state.dart';

/// A bloc that manages the state of a InnerVone according to the event that is dispatched to it.
class InnerVoneBloc extends Bloc<InnerVoneEvent, InnerVoneState> {
  InnerVoneBloc(InnerVoneState initialState) : super(initialState) {
    on<InnerVoneInitialEvent>(_onInitialize);
  }

  List<InnervoneItemModel> fillInnervoneItemList() {
    return [
      InnervoneItemModel(
          fortyNine: "4.9",
          fourHundredFiftyEight: "(458)",
          hotCappuccino: ImageConstant.imgCoffee21,
          joshuaScanlan: "Hot Cappuccino",
          joshuaScanlan1: "Espresso, Steamed Milk")
    ];
  }

  _onInitialize(
    InnerVoneInitialEvent event,
    Emitter<InnerVoneState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        innerVoneModelObj: state.innerVoneModelObj?.copyWith(
      innervoneItemList: fillInnervoneItemList(),
    )));
  }
}
