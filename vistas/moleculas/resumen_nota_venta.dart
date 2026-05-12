import 'package:flutter/material.dart';
import '../../model/boleto_modelo.dart';
import '../../themes/index.dart';
import '../atomos/etiqueta_info.dart';

class ResumenNotaVenta extends StatelessWidget {
  final BoletoModelo boleto;

  const ResumenNotaVenta({super.key, required this.boleto});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const SizedBox(width: 10),
                Text(
                  'Nota de Venta',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: ColoresApp.primario,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const Divider(height: 24),
            // Datos del pasajero
            EtiquetaInfo(titulo: 'Pasajero', valor: boleto.nombrePasajero),
            EtiquetaInfo(titulo: 'Ruta',     valor: boleto.ruta),
            EtiquetaInfo(titulo: 'Tipo',     valor: boleto.tipoPasajero),
            EtiquetaInfo(titulo: 'Boletos',  valor: '${boleto.numeroBoletos}'),
            const Divider(height: 24),
            // Cálculos en orden
            EtiquetaInfo(titulo: 'Tarifa base',          valor: '\$${boleto.tarifaBase.toStringAsFixed(2)}'),
            EtiquetaInfo(titulo: 'Descuento',            valor: '${(boleto.porcentajeDescuento * 100).toStringAsFixed(0)}%'),
            EtiquetaInfo(titulo: 'Subtotal sin descuento', valor: '\$${boleto.subtotalSinDescuento.toStringAsFixed(2)}'),
            EtiquetaInfo(titulo: 'Subtotal con descuento', valor: '\$${boleto.subtotal.toStringAsFixed(2)}'),
            EtiquetaInfo(titulo: 'IVA (15%)',            valor: '\$${boleto.iva.toStringAsFixed(2)}'),
            const Divider(height: 16),
            EtiquetaInfo(
              titulo: 'TOTAL A PAGAR',
              valor: '\$${boleto.total.toStringAsFixed(2)}',
              destacado: true,
            ),
          ],
        ),
      ),
    );
  }
}