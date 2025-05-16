  import 'package:flutter/material.dart';
  import '../controllers/anio_controller.dart';
  import '../themes/bisiesto_theme.dart'; // Importa el tema específico

  class ResultadoView extends StatelessWidget{
    final controller= AnioController();

    @override
    Widget build(BuildContext context) {
      final List<int> ultimosBisiestos =
          ModalRoute.of(context)?.settings.arguments as List<int>;

      return Scaffold(
        appBar: AppBar(
          title: const Text('Últimos Años Bisiestos'),
        ),
        body: ultimosBisiestos.isEmpty
            ? const Center(
                child: Text('No se encontraron años bisiestos.'),
              )
            : ListView.builder(
                itemCount: ultimosBisiestos.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      ultimosBisiestos[index].toString(),
                      style: BisiestoTheme.bisiestoTextStyle, // Aplica el estilo aquí
                    ),
                  );
                },
              ),
      );
    }

  }