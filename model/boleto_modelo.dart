class BoletoModelo {
  final String nombrePasajero;
  final String ruta;
  final String tipoPasajero;
  final int numeroBoletos;
  final double tarifaBase;
  final double porcentajeDescuento;   // ← nuevo
  final double subtotalSinDescuento;  // ← nuevo
  final double subtotal;
  final double descuento;
  final double iva;
  final double total;

  BoletoModelo({
    required this.nombrePasajero,
    required this.ruta,
    required this.tipoPasajero,
    required this.numeroBoletos,
    required this.tarifaBase,
    required this.porcentajeDescuento,
    required this.subtotalSinDescuento,
    required this.subtotal,
    required this.descuento,
    required this.iva,
    required this.total,
  });
}