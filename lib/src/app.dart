import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MoviePlus',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
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
      body: const Center(
        child: Text('Welcome to MoviePlus'),
      ),
    );
  }
}
