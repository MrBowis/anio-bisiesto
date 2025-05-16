import '../models/anio_model.dart';

class AnioController {
  //verificar si es bisiesto

bool verificarBisiesto(int anio){
  return AnioModel(anio).esBisiesto();
}
//obtener10ultimos años

List <int> obtenerUltimos(int desde){
  List<int> lista = [];//crear lista vacia

  int actual = desde;
  while(lista.length < 10){
    if(verificarBisiesto(actual))
      lista.add(actual);
    actual --;

  }
  return lista;

}
}