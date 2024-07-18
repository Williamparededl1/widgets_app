import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

final themeProvider = StateProvider((ref) => false);

//Listados de colores prederterminados

final colorListProvider = Provider((ref) => colorList);

final selecterColorProvider = StateProvider((ref) => 0);
