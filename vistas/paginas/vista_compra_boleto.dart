import 'package:flutter/material.dart';
import '../../controller/boleto_controlador.dart';
import '../moleculas/formulario_boleto.dart';

class VistaCompraBoleto extends StatefulWidget {
  const VistaCompraBoleto({super.key});

  @override
  State<VistaCompraBoleto> createState() => _VistaCompraBoletoEstado();
}

class _VistaCompraBoletoEstado extends State<VistaCompraBoleto> {
  final _nombreCtrl = TextEditingController();
  final _boletosCtrl = TextEditingController();
  String? _rutaSeleccionada;
  String? _tipoSeleccionado;

  final _controlador = BoletoControlador();

  void _calcular() {
    final error = _controlador.validar(
      _nombreCtrl.text,
      _rutaSeleccionada,
      _tipoSeleccionado,
      _boletosCtrl.text,
    );

    if (error != null) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(error)));
      return;
    }

    final boleto = _controlador.calcular(
      nombre: _nombreCtrl.text.trim(),
      ruta: _rutaSeleccionada!,
      tipoPasajero: _tipoSeleccionado!,
      numeroBoletos: int.parse(_boletosCtrl.text),
    );

    Navigator.pushNamed(context, '/notaVentaBoleto', arguments: boleto);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Compra de Boletos')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 8),
            const Text(
              'Transporte Interprovincial',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            FormularioBoleto(
              nombreCtrl: _nombreCtrl,
              boletosCtrl: _boletosCtrl,
              rutaSeleccionada: _rutaSeleccionada,
              tipoSeleccionado: _tipoSeleccionado,
              alCambiarRuta: (v) => setState(() => _rutaSeleccionada = v),
              alCambiarTipo: (v) => setState(() => _tipoSeleccionado = v),
              alEnviar: _calcular,
            ),
          ],
        ),
      ),
    );
  }
}
