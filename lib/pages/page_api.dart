import 'package:flutter/material.dart';

class PageApi extends StatelessWidget {
  const PageApi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('API'),
        ),
        body: Align(
          child: Image.asset(
            'assets/images/api.jpg',
            width: 250,
          ),
        ));
  }
}
