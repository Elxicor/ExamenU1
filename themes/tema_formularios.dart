import 'package:flutter/material.dart';
import 'esquema_color.dart';

class TemaFormularios {
  static final campoTexto = InputDecorationTheme(
    filled: true,
    fillColor: ColoresApp.blanco,
    labelStyle: const TextStyle(color: ColoresApp.textoSecundario),
    prefixIconColor: ColoresApp.primario,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: ColoresApp.primario),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: ColoresApp.primario.withOpacity(0.4)),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: ColoresApp.secundario, width: 2),
    ),
  );
}
