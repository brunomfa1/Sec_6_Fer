import 'package:flutter/material.dart';
import 'package:sec_6/router/app_routes.dart';
import 'package:sec_6/theme/app_theme.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      //AQUI DEFINE OS PADRÕES DE COR E APPBAR DA APLICAÇÃO
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      //INICIA A PRIMEIRA PAGINA
      initialRoute: AppRoutes.initialRoute,
      //INICIA A ROTA DE PAGINAS DO APP
      routes: AppRoutes.getAppRoutes(),
      // onGenerateRoute oferece a funcionalidade de passar um argumento 
      onGenerateRoute: AppRoutes.onGenerateRoute
    );
  }
} 