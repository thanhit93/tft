import 'package:tft/my_app.dart';
import 'package:tft/utils/app_config.dart';
import 'package:tft/utils/app_theme.dart';

Future<void> main() async {
  /// Init dev config
  AppConfig(env: Env.dev(), theme: AppTheme.origin());
  await myMain();
}
