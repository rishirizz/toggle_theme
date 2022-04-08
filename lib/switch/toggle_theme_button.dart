import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toggle_theme/theme/toggle_theme.dart';

class ToggleThemeButton extends StatelessWidget {
  const ToggleThemeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Switch.adaptive(
      value: themeProvider.isDarkTheme,
      onChanged: (value){
        final provider= Provider.of<ThemeProvider>(context,listen: false);
        provider.toggleTheme(value);
      },
    );
  }
}
