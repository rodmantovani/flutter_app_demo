import 'package:flutter/material.dart';
import 'package:flutter_application_java/home_buttons.dart';
import 'package:flutter_application_java/pages/page_api.dart';
import 'package:flutter_application_java/pages/page_categories.dart';
import 'package:flutter_application_java/pages/page_form.dart';

import 'package:flutter_application_java/pages/page_geo.dart';
import 'package:flutter_application_java/pages/page_media.dart';
import 'package:flutter_application_java/pages/page_person.dart';
import 'package:flutter_application_java/pages/page_products.dart';
import 'pages/page_lists.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.amber),
    home: const HomeButtons(),
    routes: {
      '/products': (_) => const PageProducts(),
      '/categories': (_) => const PageCategories(),
      '/person': (_) => const PagePerson(),
      '/media': (_) => const PageMediaQuery(),
      '/lists': (_) => const PageLists(),
      '/geo': (_) => const PageGeo(),
      '/api': (_) => const PageApi(),
      '/form': (_) => const PageForm()
    },
  ));
}
