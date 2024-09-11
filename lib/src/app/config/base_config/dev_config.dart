import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:movieplus/src/app/config/base_config/base_config_exports.dart';

class DevConfig extends BaseAppConfig {
  @override
  bool get bannerVisibility =>
      dotenv.env['BANNER_VISIBILITY']?.contains("true") ?? false;

  @override
  String get environment => dotenv.env['ENVIRONMENT'] ?? '';

  @override
  String get movieDbApiKey => dotenv.env['MOVIEDB_API_KEY'] ?? '';
}
