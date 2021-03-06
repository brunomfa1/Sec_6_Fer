
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({ Key? key }) : super(key: key);

  void displayDialog(BuildContext context){
      showDialog(
        barrierDismissible: true,
        context: context,
        builder: (context) {
          return AlertDialog(
            elevation: 5,
            title: const Text('Alerta'),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const[
                Text('Isso e uma alerta'),
                SizedBox( height: 10),
                FlutterLogo(size: 100,)
              ],
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context), 
                child: const Text('Cancelar')
              )
            ],
          );
        }
      );
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AlertScreen'),
      ),
      body:  Center(
        //JÁ ESTÁ SENDO MODIFICADO LÁ NO APP_THEME
        child: ElevatedButton(
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('Alerta', style: TextStyle(fontSize: 18),),
          ),
          onPressed: () => displayDialog ( context ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const  Icon(Icons.close),
        onPressed: (){
          Navigator.pop(context);
        }
      ),
    );
  }
}