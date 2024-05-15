import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '/themes/app_themes.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeInitial()) {
    init();
  }

  void init() async {
    final ThemeMode themeMode = await AppThemes.getTheme();
    emit(ThemeFetched(themeMode));
  }

  void light() async {
    const ThemeMode lightThemeMode = ThemeMode.light;
    await AppThemes.setTheme(lightThemeMode);
    emit(ThemeFetched(lightThemeMode));
  }

  void dark() async {
    const ThemeMode darkThemeMode = ThemeMode.dark;
    await AppThemes.setTheme(darkThemeMode);
    emit(ThemeFetched(darkThemeMode));
  }
}
