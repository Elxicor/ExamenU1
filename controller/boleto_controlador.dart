import '../model/boleto_modelo.dart';

class BoletoControlador {

  double _obtenerTarifa(String ruta) {
    if (ruta == 'Latacunga-Quito') return 3.00;
    else if (ruta == 'Latacunga-Ambato') return 1.50;
    else if (ruta == 'Latacunga-Guayaquil') return 15.00;
    else return 0.0;
  }

  double _obtenerDescuento(String tipo) {
    if (tipo == 'Normal') return 0.0;
    else if (tipo == 'Estudiante') return 0.50;
    else if (tipo == 'Tercera Edad') return 0.50;
    else return 0.0;
  }

  String? validar(String nombre, String? ruta, String? tipoPasajero, String boletos) {
    if (nombre.isEmpty) return 'Ingrese el nombre del pasajero';
    if (ruta == null) return 'Seleccione una ruta';
    if (tipoPasajero == null) return 'Seleccione el tipo de pasajero';
    final n = int.tryParse(boletos);
    if (n == null || n <= 0) return 'El número de boletos debe ser mayor a cero';
    return null;
  }

  BoletoModelo calcular({
    required String nombre,
    required String ruta,
    required String tipoPasajero,
    required int numeroBoletos,
  }) {
    final tarifaBase = _obtenerTarifa(ruta);
    final porcentajeDescuento = _obtenerDescuento(tipoPasajero);

    final subtotalSinDescuento = tarifaBase * numeroBoletos;
    final descuento = subtotalSinDescuento * porcentajeDescuento;
    final subtotal = subtotalSinDescuento - descuento;
    final iva = subtotal * 0.15;
    final total = subtotal + iva;

    return BoletoModelo(
      nombrePasajero: nombre,
      ruta: ruta,
      tipoPasajero: tipoPasajero,
      numeroBoletos: numeroBoletos,
      tarifaBase: tarifaBase,
      porcentajeDescuento: porcentajeDescuento,
      subtotalSinDescuento: subtotalSinDescuento,
      subtotal: subtotal,
      descuento: descuento,
      iva: iva,
      total: total,
    );
  }
}