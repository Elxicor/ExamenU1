import 'package:flutter/material.dart';
import '../../themes/index.dart';

class EtiquetaInfo extends StatelessWidget {
  final String titulo;
  final String valor;
  final bool destacado;

  const EtiquetaInfo({
    super.key,
    required this.titulo,
    required this.valor,
    this.destacado = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            titulo,
            style: TextStyle(
              fontSize: 15,
              color: ColoresApp.textoSecundario,
              fontWeight: destacado ? FontWeight.bold : FontWeight.normal,
            ),
          ),
          Text(
            valor,
            style: TextStyle(
              fontSize: 15,
              color: destacado ? ColoresApp.secundario : ColoresApp.texto,
              fontWeight: destacado ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
