import 'package:flutter/material.dart';
import '../controllers/anio_controller.dart';

class VerificarViews extends StatelessWidget {

  // Diseño de la vista
  @override
  Widget build(BuildContext context) {
    final anioController = AnioController();
    final TextEditingController anioControllerText = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Verificar Año Bisiesto'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: anioControllerText,
              decoration: const InputDecoration(
                labelText: 'Ingrese un año',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                int anio = int.parse(anioControllerText.text);
                bool esBisiesto = anioController.verificarBisiesto(anio);
                Navigator.pushNamed(context, '/resultado', arguments: esBisiesto);
              },
              child: const Text('Verificar'),
            ),
          ],
        ),
      ),
    );
  }
}
