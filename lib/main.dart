import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'components/menu_bar.dart' show menuBar;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'states/state.dart';
import './components/test.dart';

const bool isTest = false;

Future<void> lockOrientation()
async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
}

Future<void> main() async {
  await lockOrientation();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SU',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(210, 14, 100, 117)),
        textTheme: const TextTheme(
          headlineLarge: TextStyle(fontFamily: "Merriweather"),
          headlineMedium: TextStyle(fontFamily: "Merriweather"),
          headlineSmall: TextStyle(fontFamily: "Merriweather"),
        ),
        filledButtonTheme: FilledButtonThemeData(
            style: FilledButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        )),
        useMaterial3: true,
      ),
      home: const MainPage(),
    );
  }
}

class MainPage extends ConsumerWidget {
  const MainPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Widget content = ref.watch(contentProvider);

    return Scaffold(
      appBar: menuBar(context),
      body: RefreshIndicator(
        onRefresh: () async {},
        child: Body(
          content: isTest ? Test() : content,
        ),
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({
    super.key,
    required this.content,
  });

  final Widget content;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: content,
      ),
    );
  }
}
