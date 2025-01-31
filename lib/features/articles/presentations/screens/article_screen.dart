import 'package:flutter/material.dart';
import 'package:legalease/core/widgets/rating_widget.dart';

class ArticleScreen extends StatelessWidget {
  const ArticleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: RatingWidget(rating: 4,)
    );
  }
}