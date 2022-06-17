import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {

  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? keyBordType;
  final bool obscureText;

  final String formProperty;
  final Map<String,String>formValues; 

  const CustomInputField({
    Key? key, 
    this.hintText, 
    this.labelText, 
    this.helperText, 
    this.icon, 
    this.suffixIcon, 
    this.keyBordType,
    //INICIA COM false, POIS NÃO PERMITE NULO
    this.obscureText = false,
    required this.formProperty, 
    required this.formValues
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      initialValue: '',
      textCapitalization: TextCapitalization.words,
      //TIPO DE INSERÇÃO -> EMAIL, FONE, DATA
      keyboardType: keyBordType,
      //SE FOR UMA SENHA 
      obscureText: obscureText,
      onChanged: (value){
        formValues[formProperty] = value;
      },
      validator: (value){
        if(value == null) return 'Este campo é requerido';
        return value.length < 3 ? 'Mínimo de 3 letras' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration:  InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        //prefixIcon: Icon(Icons.verified_user_outlined),
        suffixIcon: suffixIcon == null ? null: Icon(suffixIcon),
        icon: icon == null ? null: Icon(icon)
        //COR DAS BORDAS -> ESTÃO DEFINIDOS APP_THEME
        //focusedBorder: OutlineInputBorder(
        //  borderSide: BorderSide(
        //    color: Colors.green
        //  )
        //),
        ////BORDAS - > ESTÃO DEFINIDOS APP_THEME
        //border: OutlineInputBorder(
        //  borderRadius: BorderRadius.only( 
        //    bottomLeft: Radius.circular(10),
        //    topRight: Radius.circular(10),
        //  )
        //)
      ),
    );
  }
}