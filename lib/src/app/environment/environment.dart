import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:movieplus/src/app/config/base_config/base_app_config.dart';
import 'package:movieplus/src/app/config/base_config/base_config_exports.dart';
import 'package:movieplus/src/app/enums/env_type.dart';
import 'package:movieplus/src/app/tokens/gen/assets.gen.dart';

class Environment {
  static final Environment _instance = Environment._internal();
  factory Environment() => _instance;
  Environment._internal();

  static late BaseAppConfig appConfig;

  Future<void> initConfig({EnvType env = EnvType.dev}) async {
    appConfig = await _getAppConfig(kReleaseMode ? EnvType.prod : env);
  }

  Future<BaseAppConfig> _getAppConfig(EnvType envType) async {
    switch (envType) {
      case EnvType.qa:
        await dotenv.load(fileName: AssetsToken.env.aEnvQa);
        return QaConfig();
      case EnvType.prod:
        await dotenv.load(fileName: AssetsToken.env.aEnvProd);
        return ProdConfig();
      default:
        await dotenv.load(fileName: AssetsToken.env.aEnvDev);
        return DevConfig();
    }
  }
}
