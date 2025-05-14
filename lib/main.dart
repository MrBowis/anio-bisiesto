import 'package:flutter/material.dart';
import 'views/resultado_views.dart';
import 'views/verificar_views.dart';
import 'themes/app_themes.dart';

void main(){
  runApp(
    MaterialApp(
      title: 'Verificar Año Bisiesto',
      initialRoute: '/',
      routes: {
        '/': (context) => VerificarViews(),
        '/resultado': (context) => ResultadoViews(),
      },
      debugShowCheckedModeBanner: false,
    )
  );
}