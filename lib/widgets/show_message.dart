import 'package:flutter/material.dart';

class ShowMessage extends StatefulWidget {
  final double result;
  const ShowMessage({super.key, required this.result});

  @override
  State<ShowMessage> createState() => _ShowMessageState();
}

class _ShowMessageState extends State<ShowMessage> {
  @override
  Widget build(BuildContext context) {
    var message = '';
    var color = Colors.red;
    if (widget.result < 18.5) {
      message = "se encuentra dentro del rango de peso insuficiente.";
      color = Colors.red;
    } else if (widget.result >= 18.5 && widget.result <= 24.9) {
      message = "se encuentra dentro del rango de peso normal o saludable.";
      color = Colors.green;
    } else if (widget.result >= 25.0 && widget.result <= 29.9) {
      message = "se encuentra dentro del rango de sobrepeso.";
      color = Colors.red;
    } else if (widget.result > 30.0) {
      message = "se encuentra dentro del rango de obesidad.";
      color = Colors.red;
    }
    return Text(message,
        textAlign: TextAlign.center, style: TextStyle(color: color));
  }
}
