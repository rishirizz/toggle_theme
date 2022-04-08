// ignore_for_file: unrelated_type_equality_checks

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toggle_theme/switch/toggle_theme_button.dart';
import 'package:toggle_theme/theme/toggle_theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final text = Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
        ? 'Dark Theme'
        : 'Light Theme';
    return Scaffold(
      appBar: AppBar(
        actions: const [
          ToggleThemeButton(),
        ],
        title: const Text(
          'Toggle Theme App',
        ),
      ),
      body: Center(
        child: Text(text),
      ),
    );
  }
}
