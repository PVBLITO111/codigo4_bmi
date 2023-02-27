import 'package:codigo4_bmi/widgets/image_card.dart';
import 'package:flutter/material.dart';

class SelectorCard extends StatefulWidget {
  const SelectorCard({super.key});

  @override
  State<SelectorCard> createState() => _SelectorCardState();
}

class _SelectorCardState extends State<SelectorCard> {
  var _isSelected = true;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: ImageCard(
          isSelected: _isSelected,
          image: 'images/male.png',
          text: 'Hombre',
          onPressed: () {
            setState(() {
              _isSelected = true;
            });
          },
        ),
      ),
      Expanded(
        child: ImageCard(
          isSelected: !_isSelected,
          image: 'images/female.png',
          text: 'Mujer',
          onPressed: () {
            setState(() {
              _isSelected = false;
            });
          },
        ),
      )
    ]);
  }
}
