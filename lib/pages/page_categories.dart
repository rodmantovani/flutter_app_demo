import 'package:flutter/material.dart';

class PageCategories extends StatelessWidget {
  const PageCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CATEGORIES'),
      ),
      body: Align(
        child: Image.asset(
          'assets/images/categories.jpg',
          width: 250,
        ),
      ),
    );
  }
}
