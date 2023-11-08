import 'package:flutter/material.dart';

@immutable
class TestThemeExtention extends ThemeExtension<TestThemeExtention> {
  const TestThemeExtention();

  @override
  ThemeExtension<TestThemeExtention> copyWith({String? imagePath}) {
    return TestThemeExtention();
  }

  @override
  ThemeExtension<TestThemeExtention> lerp(
      ThemeExtension<TestThemeExtention>? other, double t) {
    if (other is! TestThemeExtention) {
      return this;
    }
    return TestThemeExtention();
  }

  static const light = TestThemeExtention();

  static const dark = TestThemeExtention();
}
