// Mocks generated by Mockito 5.2.0 from annotations
// in espetariateste/test/app/domain/usecases/get_week_common_values_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i3;

import 'package:mockito/mockito.dart' as _i1;
import 'package:espetariateste/core/data/services/preferences_service_imp.dart'
    as _i2;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

/// A class which mocks [PreferencesServiceImp].
///
/// See the documentation for Mockito's code generation for more information.
class MockPreferencesServiceImp extends _i1.Mock
    implements _i2.PreferencesServiceImp {
  MockPreferencesServiceImp() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Future<String?> getString(String? key) =>
      (super.noSuchMethod(Invocation.method(#getString, [key]),
          returnValue: Future<String?>.value()) as _i3.Future<String?>);
  @override
  _i3.Future<bool> setString(String? key, String? value) =>
      (super.noSuchMethod(Invocation.method(#setString, [key, value]),
          returnValue: Future<bool>.value(false)) as _i3.Future<bool>);
  @override
  _i3.Future<bool> remove(String? key) =>
      (super.noSuchMethod(Invocation.method(#remove, [key]),
          returnValue: Future<bool>.value(false)) as _i3.Future<bool>);
  @override
  _i3.Future<bool> clear() => (super.noSuchMethod(Invocation.method(#clear, []),
      returnValue: Future<bool>.value(false)) as _i3.Future<bool>);
}
