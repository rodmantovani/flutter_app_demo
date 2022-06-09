import 'package:flutter/material.dart';

class PageLists extends StatelessWidget {
  const PageLists({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LISTS'),
      ),
      body: Align(
        child: Image.asset(
          'assets/images/lists.jpg',
          width: 250,
        ),
      ),
    );
  }
}
