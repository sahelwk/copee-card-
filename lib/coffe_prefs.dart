import 'package:coffee_cark/style_button.dart';
import 'package:coffee_cark/styled_body_text.dart';
import 'package:flutter/material.dart';

class CoffePrefs extends StatefulWidget {
  const CoffePrefs({super.key});

  @override
  State<CoffePrefs> createState() => _CoffePrefsState();
}

class _CoffePrefsState extends State<CoffePrefs> {

int kabad = 1;
int sugar = 1;


 void increasekabad(){
  setState(() {
 kabad = kabad  < 5 ? kabad +1 : 1;
  });
 }

 void increaseSugar(){
  setState(() {
    
 sugar = sugar < 5 ? sugar + 1 :0;
  });
 }

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
         Row(
          children: [
            const StyledBodyText('kabad : '),
                 
         for(int i = 0 ; i < kabad ; i++)
            Image.asset('assets/img/coffee_bean.png' , width: 25,
             color: Colors.brown[100],
             colorBlendMode: BlendMode.multiply,
            ),
            const Expanded(child: SizedBox()),
          StyledButton(
            onPressed:increasekabad, child: StyledBodyText('+')),
          ],
         ),
         Row(
          children: [
            const StyledBodyText('sugar : '),
            if (sugar == 0)
               const StyledBodyText('No Suger'),
           for (int i = 0 ; i< sugar ; i ++)
                Image.asset('assets/img/sugar_cube.png' , width: 25,
                      color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
                ),
             const Expanded(child: SizedBox()),
         StyledButton(
          onPressed: increaseSugar, child: StyledBodyText('+'))
          ],
         )
      ],
    );
  }
}