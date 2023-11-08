import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/theme/theme_cubit.dart';

class ThemeBlocWidget extends StatelessWidget {
  const ThemeBlocWidget(
      {super.key, required this.onThemeChanged, required this.child});

  final Function(ThemeMode mode) onThemeChanged;

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeCubit(),
      child: BlocBuilder<ThemeCubit, ThemeState>(builder: (_, state) {
        if (state is! ThemeFetched) {
          //FIXME:: change loading widget to something better
          return const Text('Fetching Theme...');
        }
        onThemeChanged(state.themeMode);
        return child;
      }),
    );
  }
}
