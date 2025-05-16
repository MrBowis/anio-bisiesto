import 'package:flutter/material.dart';
import '../controllers/anio_controller.dart';

class ResultadoView extends StatelessWidget{
  final controller= AnioController();

  @override
  Widget build(BuildContext context) {
    final orientacion =  MediaQuery.of(context).orientation;
    final lista = controller.obtenerUltimos(1);//

    return Scaffold(


      appBar: AppBar(title: Text("Lista de anios bisiestos"),),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: ListView.builder(
          itemCount: lista.length,
            itemBuilder:(context, index){
            final anio = lista[index];

            return Card(
              child: ListTile(
                title: Text(anio.toString()),
                subtitle: Text("El anio $anio es bisiesto"),
                leading: Icon(Icons.calendar_today),
                trailing: Icon(Icons.check_circle),
                onTap: () {
                  // Accion al hacer clic en el elemento
                  print("Anio seleccionado: $anio");
                },                
              ),
            );
            }),
      ),
    );
  }

}