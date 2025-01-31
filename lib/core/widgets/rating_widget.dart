import 'package:flutter/material.dart';

class RatingWidget extends StatelessWidget {
  final double rating;
  final double starSize;
  final Color starColor;
  final bool showNumeric;

  const RatingWidget({
    Key? key,
    required this.rating,  // Accepts rating value (e.g., 4.5)
    this.starSize = 24.0,  // Default star size
    this.starColor = Colors.amber,  // Star color
    this.showNumeric = true,  // Show rating number next to stars
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Generate Star Icons
        for (int i = 1; i <= 5; i++)
          Icon(
            i <= rating
                ? Icons.star // Full star
                : (i - rating < 1 ? Icons.star_half : Icons.star_border), // Half or empty star
            size: starSize,
            color: starColor,
          ),
        
        // Show numeric rating if enabled
        if (showNumeric)
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Text(
              rating.toStringAsFixed(1),
              style: TextStyle(fontSize: starSize * 0.7, fontWeight: FontWeight.bold),
            ),
          ),
      ],
    );
  }
}
