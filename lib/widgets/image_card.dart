import 'package:codigo4_bmi/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  final bool isSelected;
  final String image;
  final String text;
  final VoidCallback? onPressed;

  const ImageCard(
      {super.key,
      this.isSelected = true,
      required this.image,
      required this.text,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: CustomCard(
        backgroundColor: isSelected ? Colors.blue : Colors.white,
        borderColor: isSelected ? Colors.black : Colors.grey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(image),
            Text(text,
                style: isSelected
                    ? const TextStyle(fontWeight: FontWeight.bold)
                    : const TextStyle(fontWeight: FontWeight.normal)),
          ],
        ),
      ),
    );
  }
}
