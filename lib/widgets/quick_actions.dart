import 'package:flutter/material.dart';

class QuickActionCard extends StatelessWidget {
  final String title;
  final String imagePath;
  final Color color;
  final double imageWidth;
  final double imageHeight;
  final double top;
  final double right;

  const QuickActionCard({
    super.key,
    required this.title,
    required this.imagePath,
    required this.color,
    this.imageWidth = 70,
    this.imageHeight = 70,
    this.top = 50,
    this.right = 10,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(21),
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 10, left: 10),
              child: Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          ),
          Positioned(
            top: top,
            right: right,
            child: Image.asset(
              imagePath,
              width: imageWidth,
              height: imageHeight,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
