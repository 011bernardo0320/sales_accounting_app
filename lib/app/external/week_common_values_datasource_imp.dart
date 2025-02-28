import 'dart:convert';

import 'package:espetariateste/app/data/datasources/week_common_values_datasource.dart';
import 'package:espetariateste/app/data/dtos/week_common_values_dto.dart';
import 'package:espetariateste/app/domain/entities/week_common_values_entity.dart';
import 'package:espetariateste/core/domain/services/local_data_service.dart';

class WeekCommonValuesDataSourceImp extends WeekCommonValuesDataSource {
  WeekCommonValuesDataSourceImp(this._service);

  final LocalDataService _service;
  final String _key = 'week';

  @override
  Future<WeekCommonValuesEntity?> getValues() async {
    final json = await _service.getString(_key);

    if (json == null) return null;

    return WeekCommonValuesDTO.fromJson(jsonDecode(json));
  }

  @override
  Future setValues(WeekCommonValuesEntity values) async {
    var value = values.toJson();

    await _service.setString(_key, jsonEncode(value));
  }
}
