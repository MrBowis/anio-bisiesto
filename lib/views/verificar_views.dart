import 'package:flutter/material.dart';
import '../controllers/anio_controller.dart';
import 'resultado_views.dart'; // Asegúrate de tener esta importación

class VerificarViews extends StatelessWidget {
  final AnioController _anioController = AnioController();
  final TextEditingController _anioControllerText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Verificar y Ver Últimos Bisiestos'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _anioControllerText,
              decoration: const InputDecoration(
                labelText: 'Ingrese un año de inicio',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (_anioControllerText.text.isNotEmpty) {
                  int anioInicio = int.parse(_anioControllerText.text);
                  List<int> ultimosBisiestos =
                      _anioController.obtenerUltimosBisiestos(anioInicio);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultadoView(),
                      settings: RouteSettings(
                        arguments: ultimosBisiestos,
                      ),
                    ),
                  );
                } else {
                  // Puedes mostrar un mensaje de error si el campo está vacío
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Por favor, ingrese un año.')),
                  );
                }
              },
              child: const Text('Ver Últimos 10 Bisiestos'),
            ),
          ],
        ),
      ),
    );
  }
}