import 'package:codigo4_bmi/widgets/custom_card.dart';
import 'package:codigo4_bmi/widgets/selector_card.dart';
import 'package:codigo4_bmi/widgets/slider_card.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: const Text(
            'Calculadoa BMI',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Column(
          children: const [
            SelectorCard(),
            SliderCard(
              title: 'Peso (kg)',
              min: 20,
              max: 120,
              initialValue: 60,
            ),
            SliderCard(
              title: 'Altura (cm)',
              min: 60,
              max: 250,
              initialValue: 110,
            )
          ],
        ));
  }
}
