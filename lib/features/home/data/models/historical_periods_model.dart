import 'package:dalel/core/models/data_model.dart';
import 'package:dalel/core/utils/app_string.dart';
import 'package:dalel/features/home/data/models/wars_model.dart';

class HistoricalPeriodsModel extends DataModel {
  final List<WarsModel> wars;

  HistoricalPeriodsModel({
    required super.name,
    required super.image,
    required super.discription,
    required this.wars,
  });
  factory HistoricalPeriodsModel.fromJson(jsonData, warsList) {
    return HistoricalPeriodsModel(
      name: jsonData[FireBaseStrings.name],
      image: jsonData[FireBaseStrings.image],
      discription: jsonData[FireBaseStrings.description],
      wars: warsList,
    );
  }
}