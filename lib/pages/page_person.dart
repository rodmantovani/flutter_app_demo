import 'package:flutter/material.dart';

class PagePerson extends StatelessWidget {
  const PagePerson({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PERSON'),
      ),
      body: Align(
        child: Image.asset(
          'assets/images/person.jpg',
          width: 250,
        ),
      ),
    );
  }
}
