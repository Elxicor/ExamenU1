import 'package:flutter/material.dart';
import 'esquema_color.dart';
import 'tema_appbar.dart';
import 'tema_botones.dart';
import 'tema_formularios.dart';

class TemaGeneral {
  static ThemeData claro = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: ColoresApp.fondoClaro,
    colorScheme: const ColorScheme.light(
      primary: ColoresApp.primario,
      secondary: ColoresApp.secundario,
    ),
    appBarTheme: TemaAppbar.estilo,
    elevatedButtonTheme: TemaBotones.botonPrincipal,
    inputDecorationTheme: TemaFormularios.campoTexto,
  );
}
