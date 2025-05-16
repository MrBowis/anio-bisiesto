import 'package:flutter/material.dart';
import '../controllers/anio_controller.dart';

class VerficarView extends StatelessWidget {

  //declaro y mapeo objetos
  TextEditingController _anioC = TextEditingController();
  //instanciar
  AnioController controller = AnioController();

  //diseño
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: Text('Vereficar el año bisiesto'),),

      body: Padding(
        padding: EdgeInsets.all(16),

        child: Column(
          children: [
            TextField(
              controller: _anioC,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Ingrese un año"),

            ),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: (){
                final anio= int.parse(_anioC.text);
                if(anio == null){
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Año no valido')),
                  );
                  return;
                }

                final esBisiesto= controller.verificarBisiesto(anio);
                if(!esBisiesto){
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('El año $anio No es bisiesto')),
                  );
                  return;
                }

                //pasando argumentos
                Navigator.pushNamed(
                  context,'/resultado',
                arguments: {'anio': anio},
                );
              },
              child: Text('Verificar'),

            )
          ],
        ),
      ),
    );
  }


}
