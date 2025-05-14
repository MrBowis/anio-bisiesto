import '../models/anio_model.dart';

class AnioController {
  bool verificarBisiesto(int anio) {
    return AnioModel(anio).esBisiesto();
  }

  List<int> obtenerUltimo(int inicio) {
    List<int> lista = []; // Lista vacia
    int actual = inicio;
    while (lista.length < 10) {
      if (verificarBisiesto(actual)) {
        lista.add(actual);
        actual--;
      }
    }
    return lista;
  }
}