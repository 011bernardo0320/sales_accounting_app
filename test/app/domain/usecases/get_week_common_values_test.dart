import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:espetariateste/app/data/dtos/week_common_values_dto.dart';
import 'package:espetariateste/app/data/repositories/week_common_values_repository_imp.dart';
import 'package:espetariateste/app/domain/entities/week_common_values_entity.dart';
import 'package:espetariateste/app/domain/usecases/get_week_common_values_usecase.dart';
import 'package:espetariateste/app/external/week_common_values_datasource_imp.dart';
import 'package:espetariateste/core/data/services/preferences_service_imp.dart';

import 'get_week_common_values_test.mocks.dart';

@GenerateMocks([PreferencesServiceImp])
void main() {
  test('Get common values', () async {
    var service = MockPreferencesServiceImp();

    var usecase = GetWeekCommonValuesUseCaseImp(
      WeekCommonValuesRepositoryImp(
        WeekCommonValuesDataSourceImp(service),
      ),
    );

    var expected = WeekCommonValuesEntity(totalCards: 1000, tax: 10.45, allowance: 200);

    when(
      service.getString('week'),
    ).thenAnswer((_) async => jsonEncode(expected.toJson()));

    WeekCommonValuesEntity? commonValues = await usecase();

    expect(commonValues?.totalCards, expected.totalCards);
  });
}
