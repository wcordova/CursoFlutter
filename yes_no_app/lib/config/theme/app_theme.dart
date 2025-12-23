
import 'package:flutter/material.dart';


  const _customColor = Color.fromARGB(255, 183, 98, 58);
  const List<Color> _colorThemes = [
    Colors.blue,
    Colors.pink,
    Colors.green,
    Colors.orange,
    Colors.purple,
    Colors.teal,
    Colors.amber,
    Colors.cyan,
    Colors.indigo,
  ];

class AppTheme {
  final int selectedColor;

  AppTheme({
    required this.selectedColor
  }): assert(selectedColor >= 0 && selectedColor < _colorThemes.length, 'selectedColor must be between 0 and ${_colorThemes.length - 1}');
  

  ThemeData theme() {
    

    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor]
    );
  }

}