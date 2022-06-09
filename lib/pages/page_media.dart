import 'package:flutter/material.dart';

class PageMediaQuery extends StatelessWidget {
  const PageMediaQuery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('MEDIA QUERY'),
        ),
        body: Align(
          child: Image.asset(
            'assets/images/media.jpg',
            width: 250,
          ),
        ));
  }
}
