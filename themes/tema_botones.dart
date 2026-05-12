import 'package:flutter/material.dart';
import 'esquema_color.dart';

class TemaBotones {
  static final botonPrincipal = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: ColoresApp.secundario,
      foregroundColor: ColoresApp.blanco,
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
    ),
  );
}
