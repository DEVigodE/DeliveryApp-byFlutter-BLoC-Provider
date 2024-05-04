import 'package:flutter/material.dart';

class ColorsApp {
  static ColorsApp? _instance;

  ColorsApp._init();

  static ColorsApp get i {
    _instance ??= ColorsApp._init();
    return _instance!;
  }

  Color get primary => const Color(0xFF007D21);
  Color get secondary => const Color(0xFFF88B0C);
}

extension ColorAppExtension on BuildContext {
  ColorsApp get colors => ColorsApp.i;
  Color get primary => ColorsApp.i.primary;
  Color get secondary => ColorsApp.i.secondary;
}
