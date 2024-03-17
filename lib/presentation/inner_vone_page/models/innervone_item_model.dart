import '../../../core/app_export.dart';

/// This class is used in the [innervone_item_widget] screen.
class InnervoneItemModel {
  InnervoneItemModel({
    this.fortyNine,
    this.fourHundredFiftyEight,
    this.hotCappuccino,
    this.joshuaScanlan,
    this.joshuaScanlan1,
    this.id,
  }) {
    fortyNine = fortyNine ?? "4.9";
    fourHundredFiftyEight = fourHundredFiftyEight ?? "(458)";
    hotCappuccino = hotCappuccino ?? ImageConstant.imgCoffee21;
    joshuaScanlan = joshuaScanlan ?? "Hot Cappuccino";
    joshuaScanlan1 = joshuaScanlan1 ?? "Espresso, Steamed Milk";
    id = id ?? "";
  }

  String? fortyNine;

  String? fourHundredFiftyEight;

  String? hotCappuccino;

  String? joshuaScanlan;

  String? joshuaScanlan1;

  String? id;
}
