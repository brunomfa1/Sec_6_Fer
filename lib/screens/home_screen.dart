import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes do Flutter'),
        backgroundColor: Colors.indigo,
        elevation: 0,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading: const Icon(Icons.account_balance_sharp),
          title: const Text('Nome da rota'),
          onTap: (){
          
          //Quando clicado, vai até a pagina que está no app_routes.dart
          Navigator.pushNamed(context, 'listview1');

          //  NESSE CASO, QUANDO CLICADO, VAI ATÉ A PAGINA Listview1Screen
          //  final route = MaterialPageRoute(
          //    builder: (context) => Listview1Screen()); 
          //  Navigator.push(context, route);
          },
        ), 
        separatorBuilder: (context, index) => const Divider(), 
        itemCount: 10
      ),
    );
  }
}