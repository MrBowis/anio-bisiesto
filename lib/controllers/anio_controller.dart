import '../models/anio_model.dart';

class AnioController {
  bool verificarBisiesto(int anio) {
    return AnioModel(anio).esBisiesto();
  }

  List<int> obtenerUltimosBisiestos(int inicio, {int cantidad = 10}) {
    List<int> listaBisiestos = [];
    int actual = inicio - 1; // Empezamos un año antes del inicio
    while (listaBisiestos.length < cantidad) {
      if (verificarBisiesto(actual)) {
        listaBisiestos.add(actual);
      }
      actual--;
    }
    return listaBisiestos;
  }
}