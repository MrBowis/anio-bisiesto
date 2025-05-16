import 'package:flutter/material.dart';
import 'views/verficar_views.dart';
import 'views/resultado_views.dart';
import 'themes/app_themes.dart';

void main(){
  runApp(MaterialApp(
    title: 'Anio Bisiesto',
    //aqui va el tema
    initialRoute: '/',
    routes: {
      '/':(context)=>VerficarView(),
      '/resultado':(context)=> ResultadoView(),
    },

    debugShowCheckedModeBanner: false,
  ));
}