import 'package:flutter/material.dart';
import 'package:movieplus/src/app/core/theme/app_colors/app_colors.dart';
import 'package:movieplus/src/app/core/theme/theme_extentions/app_theme.dart';

/// [ThemeData] extension to get the colors of the app
/// This extension is used to get the colors of the app
extension AppThemeExtension on ThemeData {
  AppColors get appColors => extension<AppTheme>()!.appColors;
}

/// [BuildContext] extension to get the theme of the app
extension on BuildContext {
  ThemeData get theme => Theme.of(this);
}
