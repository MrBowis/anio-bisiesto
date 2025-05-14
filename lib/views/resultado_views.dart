import 'package:flutter/material.dart';

class ResultadoViews extends StatelessWidget {
  const ResultadoViews({super.key});

  @override
  Widget build(BuildContext context) {
    final bool esBisiesto = ModalRoute.of(context)?.settings.arguments as bool;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Resultado'),
      ),
      body: Center(
        child: Text(
          esBisiesto ? 'El año es bisiesto' : 'El año no es bisiesto',
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}