import 'package:flutter/material.dart';
import 'package:toggle_theme/pages/home_page.dart';
import 'package:toggle_theme/theme/toggle_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.system, //will take the default system theme
      theme: ToggleTheme.lightTheme,
      darkTheme: ToggleTheme.darkTheme,
       home: const HomePage(),
    );
  }
}
