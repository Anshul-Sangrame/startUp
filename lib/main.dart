import 'package:flutter/material.dart';
import 'components/menu_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'states/state.dart';

void main() {
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
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(211, 2, 213, 255)),
        textTheme: TextTheme(
          headlineLarge: TextStyle(fontFamily: "Merriweather"),
          headlineMedium: TextStyle(fontFamily: "Merriweather"),
          headlineSmall: TextStyle(fontFamily: "Merriweather"),
        ),
        useMaterial3: true,
      ),
      home: MainPage(),
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
      body: Body(
        content: content,
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
