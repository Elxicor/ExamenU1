import 'package:flutter/material.dart';
import '../atomos/campo_texto_personalizado.dart';
import '../atomos/selector_personalizado.dart';
import '../atomos/boton_personalizado.dart';

class FormularioBoleto extends StatelessWidget {
  final TextEditingController nombreCtrl;
  final TextEditingController boletosCtrl;
  final String? rutaSeleccionada;
  final String? tipoSeleccionado;
  final ValueChanged<String?> alCambiarRuta;
  final ValueChanged<String?> alCambiarTipo;
  final VoidCallback alEnviar;

  static const List<String> rutas = [
    'Latacunga-Quito',
    'Latacunga-Ambato',
    'Latacunga-Guayaquil',
  ];

  static const List<String> tipos = [
    'Normal',
    'Estudiante',
    'Tercera Edad',
  ];

  const FormularioBoleto({
    super.key,
    required this.nombreCtrl,
    required this.boletosCtrl,
    required this.rutaSeleccionada,
    required this.tipoSeleccionado,
    required this.alCambiarRuta,
    required this.alCambiarTipo,
    required this.alEnviar,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CampoTextoPersonalizado(
          etiqueta: 'Nombre del Pasajero',
          icono: Icons.person,
          controlador: nombreCtrl,
        ),
        const SizedBox(height: 16),
        SelectorPersonalizado(
          etiqueta: 'Ruta',
          valorSeleccionado: rutaSeleccionada,
          opciones: rutas,
          alCambiar: alCambiarRuta,
        ),
        const SizedBox(height: 16),
        SelectorPersonalizado(
          etiqueta: 'Tipo de Pasajero',
          valorSeleccionado: tipoSeleccionado,
          opciones: tipos,
          alCambiar: alCambiarTipo,
        ),
        const SizedBox(height: 16),
        CampoTextoPersonalizado(
          etiqueta: 'Número de Boletos',
          icono: Icons.confirmation_number,
          controlador: boletosCtrl,
          teclado: TextInputType.number,
        ),
        const SizedBox(height: 24),
        BotonPersonalizado(
          texto: 'Calcular y Ver Nota de Venta',
          alPresionar: alEnviar,
          icono: Icons.receipt_long,
        ),
      ],
    );
  }
}
