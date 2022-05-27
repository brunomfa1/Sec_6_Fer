import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {

  final options = const ['Megaman','Metal Gear','Super Smash','Final Fantasy'];

  const Listview2Screen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView tipo 2'),
        elevation: 0,
        backgroundColor: Colors.indigo,
      ),
      body: ListView.separated(
        //PASSE PELO CONSTRUTOR RETORNANDO CADA ELEMENTO DE ACORDO COM O INDEX
        itemBuilder: (context, index) => ListTile(
          title: Text(options[index],),
          trailing: const Icon(Icons.arrow_forward_ios_outlined, color: Colors.indigo,),
          onTap: (){},
        ),
        //PASSA O DIVISOR DE ELEMENTO/ A REFERENCIA '_' É QUE NÃO ESTOU USANDO O ELEMENTO 
        separatorBuilder:( context , index) => const Divider(), 
        //QUANTOS ITENS EU TENHO
        itemCount: options.length,
        
      ),
    );
  }
}