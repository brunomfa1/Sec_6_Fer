import 'package:flutter/material.dart';
import 'package:sec_6/widgets/widgets.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final myFormKey = GlobalKey<FormState>();


            //chave: valor 
    final Map<String, String> formValues = {
      'firts_name':'Fernando',
      'last_name' :'Herrera',
      'email'     :'fernando@google.com',
      'password'  :'123456',
      'role'      : 'Admin'  
    };

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Inputs'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                CustomInputField(labelText: 'Nome', hintText: 'Nome de usuário', formProperty: 'firts_name', formValues: formValues,),
                const SizedBox(height: 30),
                CustomInputField(labelText: 'Sobrenome', hintText: 'Sobrenome', formProperty: 'last_name', formValues: formValues,),
                const SizedBox(height: 30),
                CustomInputField(labelText: 'Email', hintText: 'Email do usuário',keyBordType: TextInputType.emailAddress, formProperty: 'email', formValues: formValues,),
                const SizedBox(height: 30),
                CustomInputField(labelText: 'Senha', hintText: 'Senha do usuário',obscureText: true, formProperty: 'password', formValues: formValues,),
                const SizedBox(height: 30),

                //INFORMANDO QUE TIPO DE DADOS TERÁ NOS CAMPOS'
                DropdownButtonFormField<String>(
                  items:const  [
                    DropdownMenuItem(value: 'Admin',child: Text('Admin')),
                    DropdownMenuItem(value: 'Superuser',child: Text('Superuser')),                   
                    
                  ],
                  onChanged:(value){
                    print(value);
                    formValues['role'] = value ?? 'Admin';
                  },
                ),

                ElevatedButton(                 
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(child: Text('Guardar'))
                  ), 
                  onPressed: (){
                    FocusScope.of(context).requestFocus(FocusNode());  
                    if (!myFormKey.currentState!.validate()){
                    print('Formulário');                    
                    return;
                    }
                    print(formValues);                    
                  },                  
                )          
              ],
            ),
          ),
        ),
      ),
    );
  }
}

