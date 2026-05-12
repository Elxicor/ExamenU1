import 'package:flutter/material.dart';
import '../../themes/index.dart';

class SelectorPersonalizado extends StatelessWidget {
  final String etiqueta;
  final String? valorSeleccionado;
  final List<String> opciones;
  final ValueChanged<String?> alCambiar;

  const SelectorPersonalizado({
    super.key,
    required this.etiqueta,
    required this.valorSeleccionado,
    required this.opciones,
    required this.alCambiar,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: valorSeleccionado,
      decoration: InputDecoration(
        labelText: etiqueta,
      ),
      items: opciones
          .map((op) => DropdownMenuItem(value: op, child: Text(op)))
          .toList(),
      onChanged: alCambiar,
      dropdownColor: ColoresApp.blanco,
    );
  }
}
