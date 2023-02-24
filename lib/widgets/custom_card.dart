import 'package:flutter/material.dart';

class CustomCard extends StatefulWidget {
  final Widget child;
  final Color backgroundColor;
  final Color borderColor;

  const CustomCard(
      {super.key,
      required this.child,
      this.backgroundColor = Colors.white,
      this.borderColor = Colors.grey});

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 140,
        decoration: BoxDecoration(
          border: Border.all(
            color: widget.borderColor,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(4)),
          color: widget.backgroundColor,
        ),
        child: widget.child,
      ),
    );
  }
}
