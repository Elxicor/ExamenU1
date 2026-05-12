import 'package:flutter/material.dart';
import '../../model/boleto_modelo.dart';
import '../../themes/index.dart';
import '../moleculas/resumen_nota_venta.dart';

class VistaNotaVentaBoleto extends StatelessWidget {
  const VistaNotaVentaBoleto({super.key});

  @override
  Widget build(BuildContext context) {
    final boleto =
        ModalRoute.of(context)!.settings.arguments as BoletoModelo;

    return Scaffold(
      appBar: AppBar(title: const Text('Nota de Venta')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            ResumenNotaVenta(boleto: boleto),
            const SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.arrow_back),
                label: const Text('Nueva Compra'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColoresApp.primario,
                  foregroundColor: ColoresApp.blanco,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
