import 'package:flutter/material.dart';
import 'package:sec_6/widgets/widgets.dart';


class CardScreen extends StatelessWidget {
  const CardScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CardScreen')
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children:const [   

          CustomCardType1(),
          SizedBox(height: 10),
          CustomCardType2(imageUrl: 'https://img.freepik.com/free-vector/flying-slice-pizza-cartoon-vector-illustration-fast-food-concept-isolated-vector-flat-cartoon-style_138676-1934.jpg?w=2000',legenda: 'Pizza',),
           SizedBox(height: 10),
          CustomCardType2(imageUrl: 'https://www.adobe.com/content/dam/cc/us/en/creativecloud/illustration-adobe-illustration/vector-art/desktop/vector-art_P1_900x420.jpg.img.jpg',legenda: 'Onça',)
        
        ],
      ),
    );
  }

  
}