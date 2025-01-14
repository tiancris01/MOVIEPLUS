import 'package:flutter/material.dart';
import 'package:movieplus/src/app/core/theme/theme_extentions/app_theme.dart';
import 'package:movieplus/src/app/environment/environment.dart';
import 'package:movieplus/src/app/services/colors_services/color_service.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    //TODO: Find a better way to instantiate the color and fonst
    final colorService = ColorService(LocalColors());
    final appTheme = AppTheme(
      appColors: colorService.getAppColors(),
    );
    return MaterialApp(
      title: 'MoviePlus',
      debugShowCheckedModeBanner: Environment.appConfig.bannerVisibility,
      theme: appTheme.toThemeData(LightScheme()),
      home: const HomeScree(),
    );
  }
}

class HomeScree extends StatelessWidget {
  const HomeScree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MoviePlus'),
      ),
      body: Center(
        child: Text(Environment.appConfig.movieDbApiKey),
      ),
    );
  }
}
