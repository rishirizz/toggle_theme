import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toggle_theme/pages/home_page.dart';
import 'package:toggle_theme/theme/toggle_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
        builder: (context, _) {
          final themeProvider = Provider.of<ThemeProvider>(context);
          return MaterialApp(
            title: 'Flutter Demo',
            themeMode: themeProvider.themeMode,
            theme: ToggleTheme.lightTheme,
            darkTheme: ToggleTheme.darkTheme,
            home: const HomePage(),
          );
        });
  }
}
