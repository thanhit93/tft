import 'package:npreferences/npreferences.dart';
import 'package:tft/services/cache/cache.dart';

/// Implement Storage by SharedPreferences
class CachePreferences extends Cache with NPreferences {}
