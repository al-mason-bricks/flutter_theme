import 'package:mason/mason.dart';

void run(HookContext context) {
  context.logger.warn(
      'You need to wrap your MaterialApp/CupertinoApp widget with ThemeBlocWidget');
}
