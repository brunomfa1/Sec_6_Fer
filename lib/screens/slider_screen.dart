import 'package:flutter/material.dart';
import 'package:sec_6/theme/app_theme.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({ Key? key }) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _slideEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Slider && Checks'
        ),
      ),
      body: Column(
        children: [
           Slider.adaptive(
            min: 50,
            max: 400,
            activeColor: AppTheme.primary,
          // DIVISIOR NA BARRA 
          // divisions: 10,
            value: _sliderValue, 
            onChanged: _slideEnabled ? (value){
              _sliderValue = value;
              setState(() {});
            }
            :null
          ),
        //  CHECKBOX NORMAL
        //  Checkbox(
        //    value: _slideEnabled,
        //    onChanged: (value){
        //      _slideEnabled = value ?? true;
        //      setState(() {});
        //    },
        //  ),

          CheckboxListTile(
            activeColor: AppTheme.primary,
            title: const Text('Habilitar Slider'),
            value: _slideEnabled, 
            onChanged: (value){
              setState(() {
                _slideEnabled = value ?? true; 
              });
            }
          ),
        
          SwitchListTile(
            activeColor: AppTheme.primary,
            title: const Text('Habilitar Slider 2'),
            value: _slideEnabled, 
            onChanged: (value){
              setState(() {
                _slideEnabled = value;
              });
            }
          ),

          const AboutListTile(),
        //  Switch(
        //    value: _slideEnabled, 
        //    onChanged: (value){
        //      setState(() {
        //        _slideEnabled = value;
        //      });
        //    }
        //  ),

          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage('https://www.imagensempng.com.br/wp-content/uploads/2022/06/Coca-Cola-Gelada-Png-1024x1024.png'),
                fit: BoxFit.contain, 
                width: _sliderValue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}