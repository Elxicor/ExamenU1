import 'package:flutter/material.dart';

class CampoTextoPersonalizado extends StatelessWidget {
  final String etiqueta;
  final IconData icono;
  final TextEditingController controlador;
  final TextInputType teclado;

  const CampoTextoPersonalizado({
    super.key,
    required this.etiqueta,
    required this.icono,
    required this.controlador,
    this.teclado = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controlador,
      keyboardType: teclado,
      decoration: InputDecoration(
        labelText: etiqueta,
      ),
    );
  }
}
