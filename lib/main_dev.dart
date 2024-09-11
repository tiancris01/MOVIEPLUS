import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:movieplus/firebase_options.dart';
import 'package:movieplus/src/app.dart';
import 'package:movieplus/src/app/environment/environment.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Environment().initConfig();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const App());
}
