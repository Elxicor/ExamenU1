import 'package:flutter/material.dart';
import 'themes/index.dart';
import 'vistas/paginas/vista_compra_boleto.dart';
import 'vistas/paginas/vista_nota_venta_boleto.dart';

void main() {
  runApp(const AplicacionBoletos());
}

class AplicacionBoletos extends StatelessWidget {
  const AplicacionBoletos({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Boletos de Bus',
      theme: TemaGeneral.claro,
      initialRoute: '/boletos',
      routes: {
        '/boletos': (context) => const VistaCompraBoleto(),
        '/notaVentaBoleto': (context) => const VistaNotaVentaBoleto(),
      },
    );
  }
}
