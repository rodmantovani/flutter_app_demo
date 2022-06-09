import 'package:flutter/material.dart';

class PageProducts extends StatelessWidget {
  const PageProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PRODUCTS'),
      ),
      body: Align(
        child: Image.asset(
          'assets/images/pro.jpg',
          width: 250,
        ),
      ),
    );
  }
}
