import 'package:flutter/material.dart';
import 'package:sec_6/router/app_routes.dart';
import 'package:sec_6/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final menuOptions = AppRoutes.menuOptions;
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes do Flutter'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          //ATRAVEZ DO LISTVIEW, FAZ REFERENCIA A CLASSE
          //MOSTRANDO TODAS AS OPÇÕES
          leading: Icon(menuOptions[index].icon, color: AppTheme.primary ),
          title:  Text(menuOptions[index].name),
          onTap: (){          
          //Quando clicado, vai até a pagina que está no app_routes.dart
          Navigator.pushNamed(context, menuOptions[index].route );

          //  NESSE CASO, QUANDO CLICADO, VAI ATÉ A PAGINA Listview1Screen
          //  final route = MaterialPageRoute(
          //    builder: (context) => Listview1Screen()); 
          //  Navigator.push(context, route);
          },
        ), 
        separatorBuilder: (context, index) => const Divider(), 
        itemCount: menuOptions.length
      ),
    );
  }
}