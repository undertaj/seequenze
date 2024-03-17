import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/sixtyseven_item_model.dart';
import 'package:lisha_s_application1/presentation/iphone_14_pro_max_two_screen/models/iphone_14_pro_max_two_model.dart';
part 'iphone_14_pro_max_two_event.dart';
part 'iphone_14_pro_max_two_state.dart';

/// A bloc that manages the state of a Iphone14ProMaxTwo according to the event that is dispatched to it.
class Iphone14ProMaxTwoBloc
    extends Bloc<Iphone14ProMaxTwoEvent, Iphone14ProMaxTwoState> {
  Iphone14ProMaxTwoBloc(Iphone14ProMaxTwoState initialState)
      : super(initialState) {
    on<Iphone14ProMaxTwoInitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
    on<ChangeSwitchEvent>(_changeSwitch);
    on<ChangeSwitch1Event>(_changeSwitch1);
    on<ChangeSwitch2Event>(_changeSwitch2);
    on<ChangeSwitch3Event>(_changeSwitch3);
    on<ChangeSwitch4Event>(_changeSwitch4);
    on<ChangeSwitch5Event>(_changeSwitch5);
    on<ChangeSwitch6Event>(_changeSwitch6);
    on<ChangeSwitch7Event>(_changeSwitch7);
    on<ChangeSwitch8Event>(_changeSwitch8);
    on<ChangeSwitch9Event>(_changeSwitch9);
    on<ChangeSwitch10Event>(_changeSwitch10);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<Iphone14ProMaxTwoState> emit,
  ) {
    List<SixtysevenItemModel> newList = List<SixtysevenItemModel>.from(
        state.iphone14ProMaxTwoModelObj!.sixtysevenItemList);
    newList[event.index] = newList[event.index].copyWith(
      isSelected: event.isSelected,
    );
    emit(state.copyWith(
        iphone14ProMaxTwoModelObj: state.iphone14ProMaxTwoModelObj
            ?.copyWith(sixtysevenItemList: newList)));
  }

  _changeSwitch(
    ChangeSwitchEvent event,
    Emitter<Iphone14ProMaxTwoState> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch: event.value,
    ));
  }

  _changeSwitch1(
    ChangeSwitch1Event event,
    Emitter<Iphone14ProMaxTwoState> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch1: event.value,
    ));
  }

  _changeSwitch2(
    ChangeSwitch2Event event,
    Emitter<Iphone14ProMaxTwoState> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch2: event.value,
    ));
  }

  _changeSwitch3(
    ChangeSwitch3Event event,
    Emitter<Iphone14ProMaxTwoState> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch3: event.value,
    ));
  }

  _changeSwitch4(
    ChangeSwitch4Event event,
    Emitter<Iphone14ProMaxTwoState> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch4: event.value,
    ));
  }

  _changeSwitch5(
    ChangeSwitch5Event event,
    Emitter<Iphone14ProMaxTwoState> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch5: event.value,
    ));
  }

  _changeSwitch6(
    ChangeSwitch6Event event,
    Emitter<Iphone14ProMaxTwoState> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch6: event.value,
    ));
  }

  _changeSwitch7(
    ChangeSwitch7Event event,
    Emitter<Iphone14ProMaxTwoState> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch7: event.value,
    ));
  }

  _changeSwitch8(
    ChangeSwitch8Event event,
    Emitter<Iphone14ProMaxTwoState> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch8: event.value,
    ));
  }

  _changeSwitch9(
    ChangeSwitch9Event event,
    Emitter<Iphone14ProMaxTwoState> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch9: event.value,
    ));
  }

  _changeSwitch10(
    ChangeSwitch10Event event,
    Emitter<Iphone14ProMaxTwoState> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch10: event.value,
    ));
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<Iphone14ProMaxTwoState> emit,
  ) {
    emit(state.copyWith(
      highPriority: event.value,
    ));
  }

  List<SelectionPopupModel> fillDropdownItemList() {
    return [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      )
    ];
  }

  List<SixtysevenItemModel> fillSixtysevenItemList() {
    return List.generate(4, (index) => SixtysevenItemModel());
  }

  _onInitialize(
    Iphone14ProMaxTwoInitialEvent event,
    Emitter<Iphone14ProMaxTwoState> emit,
  ) async {
    emit(state.copyWith(
      isSelectedSwitch: false,
      isSelectedSwitch1: false,
      isSelectedSwitch2: false,
      isSelectedSwitch3: false,
      isSelectedSwitch4: false,
      isSelectedSwitch5: false,
      isSelectedSwitch6: false,
      isSelectedSwitch7: false,
      isSelectedSwitch8: false,
      isSelectedSwitch9: false,
      isSelectedSwitch10: false,
      highPriority: false,
    ));
    emit(state.copyWith(
        iphone14ProMaxTwoModelObj: state.iphone14ProMaxTwoModelObj?.copyWith(
      dropdownItemList: fillDropdownItemList(),
      sixtysevenItemList: fillSixtysevenItemList(),
    )));
  }
}
