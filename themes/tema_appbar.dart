import 'package:flutter/material.dart';
import 'esquema_color.dart';

class TemaAppbar {
  static const AppBarTheme estilo = AppBarTheme(
    backgroundColor: ColoresApp.primario,
    foregroundColor: ColoresApp.blanco,
    centerTitle: true,
    elevation: 3,
    titleTextStyle: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: ColoresApp.blanco,
    ),
  );
}
