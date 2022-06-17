import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppTheme {
  
  //DEFININDO A COR PRIMARIA 
  static const Color primary = Colors.indigo;
  
  //DEFININDO A COR DO APPBAR
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: Colors.indigo,
    appBarTheme: const AppBarTheme(
      color: Colors.indigo,
      elevation: 0
    ),
    //DEFININDO TEMA DO TEXTBUTTON
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(primary: primary)
    ),
    //DEFININDO TEMA DO floatingActionButtonTheme
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary,
      elevation: 5
    ),
    //DEFININDO TEMA ElevatedButton
    elevatedButtonTheme:ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
            primary: Colors.indigo,
            shape: const StadiumBorder(),
            elevation: 0
          ),
    ),
    
    //DEFININDO O TEMA inputDecoration
    inputDecorationTheme: const InputDecorationTheme(
       floatingLabelStyle: TextStyle(color: primary),
       enabledBorder: OutlineInputBorder(
         borderSide: BorderSide( color: primary),
         borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),topRight: Radius.circular(10))
        ),
        focusedBorder:  OutlineInputBorder(
          borderSide: BorderSide(color: primary),
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),topRight: Radius.circular(10))
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10))
        )
    )

  );  
 


  //TEMA ESCURO
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: Colors.indigo,

    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0,
    ),

    scaffoldBackgroundColor: Colors.black

  );

}
