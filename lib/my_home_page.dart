import 'dart:math';

import 'package:codigo4_bmi/widgets/selector_card.dart';
import 'package:codigo4_bmi/widgets/slider_card.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var weight = 65.0;
  var height = 65.0;
  var result = 0.0;
  var showResult = false;

  double calculateBmi(double weight, double height) {
    return weight / pow((height / 100), 2);
  }

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
          children: [
            const SelectorCard(),
            SliderCard(
              title: 'Peso (kg)',
              min: 20,
              max: 120,
              initialValue: weight,
              onChange: (val) {
                setState(() {
                  weight = val;
                  result = calculateBmi(weight, height);
                });
              },
            ),
            SliderCard(
              title: 'Altura (cm)',
              min: 60,
              max: 250,
              initialValue: height,
              onChange: (val) {
                setState(() {
                  height = val;
                  result = calculateBmi(weight, height);
                });
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(40)),
                onPressed: () {
                  setState(() {
                    result = calculateBmi(weight, height);
                    showResult = true;
                  });
                },
                child: const Text('Calcular BMI'),
              ),
            ),
            Visibility(
              visible: showResult,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Su índice de mas corporal es ${result.round()}',
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
