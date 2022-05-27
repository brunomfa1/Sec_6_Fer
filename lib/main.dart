import 'package:flutter/material.dart';
import 'package:sec_6/router/app_routes.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      //INICIA A PRIMEIRA PAGINA
      initialRoute: AppRoutes.initialRoute,
      //INICIA A ROTA DE PAGINAS DO APP
      routes: AppRoutes.routes,
      // onGenerateRoute oferece a funcionalidade de passar um argumento 
      onGenerateRoute: AppRoutes.onGenerateRoute
    );
  }
} 