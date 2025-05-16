import 'package:flutter/material.dart';
import './views/resultado_views.dart';
import './views/verificar_views.dart';
import './themes/app_themes.dart';
void main() {
  runApp(
    MaterialApp(
      title: 'Verificar Año Bisiesto',
      initialRoute: '/',
      routes: {
        '/': (context) => VerificarViews(),
        '/resultado': (context) => ResultadoView(), // Asegúrate de que ResultadoViews sea const si es un StatelessWidget
      },
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme, // Aplica el tema claro
      darkTheme: AppTheme.darkTheme, // Aplica el tema oscuro (opcional)
      themeMode: ThemeMode.light, // Define el modo de tema inicial (light, dark, system)
    ),
  );}