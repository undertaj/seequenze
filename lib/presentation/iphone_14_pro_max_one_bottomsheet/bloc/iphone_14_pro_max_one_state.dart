// ignore_for_file: must_be_immutable

part of 'iphone_14_pro_max_one_bloc.dart';

/// Represents the state of Iphone14ProMaxOne in the application.
class Iphone14ProMaxOneState extends Equatable {
  Iphone14ProMaxOneState({
    this.selectedDropDownValue,
    this.isSelectedSwitch = false,
    this.isSelectedSwitch1 = false,
    this.isSelectedSwitch2 = false,
    this.isSelectedSwitch3 = false,
    this.isSelectedSwitch4 = false,
    this.isSelectedSwitch5 = false,
    this.isSelectedSwitch6 = false,
    this.isSelectedSwitch7 = false,
    this.isSelectedSwitch8 = false,
    this.isSelectedSwitch9 = false,
    this.isSelectedSwitch10 = false,
    this.highPriority = false,
    this.iphone14ProMaxOneModelObj,
  });

  SelectionPopupModel? selectedDropDownValue;

  Iphone14ProMaxOneModel? iphone14ProMaxOneModelObj;

  bool isSelectedSwitch;

  bool isSelectedSwitch1;

  bool isSelectedSwitch2;

  bool isSelectedSwitch3;

  bool isSelectedSwitch4;

  bool isSelectedSwitch5;

  bool isSelectedSwitch6;

  bool isSelectedSwitch7;

  bool isSelectedSwitch8;

  bool isSelectedSwitch9;

  bool isSelectedSwitch10;

  bool highPriority;

  @override
  List<Object?> get props => [
        selectedDropDownValue,
        isSelectedSwitch,
        isSelectedSwitch1,
        isSelectedSwitch2,
        isSelectedSwitch3,
        isSelectedSwitch4,
        isSelectedSwitch5,
        isSelectedSwitch6,
        isSelectedSwitch7,
        isSelectedSwitch8,
        isSelectedSwitch9,
        isSelectedSwitch10,
        highPriority,
        iphone14ProMaxOneModelObj,
      ];

  Iphone14ProMaxOneState copyWith({
    SelectionPopupModel? selectedDropDownValue,
    bool? isSelectedSwitch,
    bool? isSelectedSwitch1,
    bool? isSelectedSwitch2,
    bool? isSelectedSwitch3,
    bool? isSelectedSwitch4,
    bool? isSelectedSwitch5,
    bool? isSelectedSwitch6,
    bool? isSelectedSwitch7,
    bool? isSelectedSwitch8,
    bool? isSelectedSwitch9,
    bool? isSelectedSwitch10,
    bool? highPriority,
    Iphone14ProMaxOneModel? iphone14ProMaxOneModelObj,
  }) {
    return Iphone14ProMaxOneState(
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      isSelectedSwitch1: isSelectedSwitch1 ?? this.isSelectedSwitch1,
      isSelectedSwitch2: isSelectedSwitch2 ?? this.isSelectedSwitch2,
      isSelectedSwitch3: isSelectedSwitch3 ?? this.isSelectedSwitch3,
      isSelectedSwitch4: isSelectedSwitch4 ?? this.isSelectedSwitch4,
      isSelectedSwitch5: isSelectedSwitch5 ?? this.isSelectedSwitch5,
      isSelectedSwitch6: isSelectedSwitch6 ?? this.isSelectedSwitch6,
      isSelectedSwitch7: isSelectedSwitch7 ?? this.isSelectedSwitch7,
      isSelectedSwitch8: isSelectedSwitch8 ?? this.isSelectedSwitch8,
      isSelectedSwitch9: isSelectedSwitch9 ?? this.isSelectedSwitch9,
      isSelectedSwitch10: isSelectedSwitch10 ?? this.isSelectedSwitch10,
      highPriority: highPriority ?? this.highPriority,
      iphone14ProMaxOneModelObj:
          iphone14ProMaxOneModelObj ?? this.iphone14ProMaxOneModelObj,
    );
  }
}
