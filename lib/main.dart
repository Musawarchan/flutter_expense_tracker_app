import 'package:expense_tracker_app/widgets/expenses.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  // for locking device orientation

  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((fn) {
    runApp(const MyApp());
  });
}

var kColorScheme =
    ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 96, 59, 181));
var kDarkColorScheme =
    ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 2, 39, 49));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark().copyWith(
        colorScheme: kDarkColorScheme,
        brightness: Brightness.dark,
        useMaterial3: true,
        cardTheme: const CardTheme().copyWith(
          color: kDarkColorScheme.onSecondaryContainer,
          margin: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kDarkColorScheme.primaryContainer,
            foregroundColor: kDarkColorScheme.onPrimaryContainer,
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(
        useMaterial3: true,
        colorScheme: kColorScheme,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: kColorScheme.onPrimaryContainer,
          foregroundColor: kColorScheme.primaryContainer,
        ),
        cardTheme: const CardTheme().copyWith(
          color: kColorScheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kColorScheme.primaryContainer,
          ),
        ),
        textTheme: ThemeData().textTheme.copyWith(
              titleLarge: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: kColorScheme.onSecondaryContainer,
              ),
            ),
      ),
      themeMode: ThemeMode.system,
      home: const Expenses(),
    );
  }
}
