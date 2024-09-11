import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movieplus/src/app/core/theme/app_colors/app_colors.dart';

class AppTheme extends ThemeExtension<AppTheme> {
  final AppColors appColors;

  AppTheme({
    required this.appColors,
  });

  ColorScheme _createColorScheme(IScheme scheme) {
    return scheme.createColorScheme(appColors);
  }

  ThemeData _base(ColorScheme colorScheme) {
    final primaryTextTheme = GoogleFonts.rubikTextTheme();
    final secondaryTextTheme = GoogleFonts.workSansTextTheme();
    final textTheme = primaryTextTheme.copyWith(
      bodySmall: secondaryTextTheme.bodySmall,
      bodyMedium: secondaryTextTheme.bodyMedium,
      bodyLarge: secondaryTextTheme.bodyLarge,
    );

    final isLight = colorScheme.brightness == Brightness.light;
    return ThemeData(
      textTheme: textTheme,
      extensions: [this],
      useMaterial3: true,
      colorScheme: colorScheme,
      appBarTheme: AppBarTheme(
        backgroundColor: isLight ? appColors.primary : appColors.tertiary,
      ),
    );
  }

  ThemeData toThemeData(IScheme scheme) {
    final colorScheme = _createColorScheme(scheme);
    return _base(colorScheme).copyWith(brightness: colorScheme.brightness);
  }

  @override
  ThemeExtension<AppTheme> copyWith({
    AppColors? appColors,
  }) {
    return AppTheme(
      appColors: AppColors(
        primary: appColors?.primary ?? this.appColors.primary,
        secondary: appColors?.secondary ?? this.appColors.secondary,
        tertiary: appColors?.tertiary ?? this.appColors.tertiary,
        background: appColors?.background ?? this.appColors.background,
        surface: appColors?.surface ?? this.appColors.surface,
        error: appColors?.error ?? this.appColors.error,
        onPrimary: appColors?.onPrimary ?? this.appColors.onPrimary,
        onSecondary: appColors?.onSecondary ?? this.appColors.onSecondary,
        onBackground: appColors?.onBackground ?? this.appColors.onBackground,
        onSurface: appColors?.onSurface ?? this.appColors.onSurface,
        onError: appColors?.onError ?? this.appColors.onError,
      ),
    );
  }

  @override
  ThemeExtension<AppTheme> lerp(
      covariant ThemeExtension<AppTheme>? other, double t) {
    if (other is! AppTheme) return this;
    return AppTheme(
      appColors: AppColors(
        primary: Color.lerp(appColors.primary, other.appColors.primary, t)!,
        secondary:
            Color.lerp(appColors.secondary, other.appColors.secondary, t)!,
        tertiary: Color.lerp(appColors.tertiary, other.appColors.tertiary, t)!,
        background:
            Color.lerp(appColors.background, other.appColors.background, t)!,
        surface: Color.lerp(appColors.surface, other.appColors.surface, t)!,
        error: Color.lerp(appColors.error, other.appColors.error, t)!,
        onPrimary:
            Color.lerp(appColors.onPrimary, other.appColors.onPrimary, t)!,
        onSecondary:
            Color.lerp(appColors.onSecondary, other.appColors.onSecondary, t)!,
        onBackground: Color.lerp(
            appColors.onBackground, other.appColors.onBackground, t)!,
        onSurface:
            Color.lerp(appColors.onSurface, other.appColors.onSurface, t)!,
        onError: Color.lerp(appColors.onError, other.appColors.onError, t)!,
      ),
    );
  }
}

abstract interface class IScheme {
  ColorScheme createColorScheme(AppColors appColors);
}

class LightScheme implements IScheme {
  @override
  ColorScheme createColorScheme(AppColors appColors) {
    return ColorScheme.light(
      primary: appColors.primary,
      secondary: appColors.secondary,
      tertiary: appColors.tertiary,
      error: appColors.error,
    );
  }
}

class DarkScheme implements IScheme {
  @override
  ColorScheme createColorScheme(AppColors appColors) {
    return ColorScheme.dark(
      primary: appColors.tertiary,
      secondary: appColors.secondary,
      tertiary: appColors.primary,
      error: appColors.error,
    );
  }
}
