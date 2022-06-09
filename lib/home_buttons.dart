import 'package:flutter/material.dart';
import 'package:flutter_application_java/pages/page_api.dart';
import 'package:flutter_application_java/pages/page_categories.dart';
import 'package:flutter_application_java/pages/page_form.dart';

import 'package:flutter_application_java/pages/page_geo.dart';
import 'package:flutter_application_java/pages/page_lists.dart';
import 'package:flutter_application_java/pages/page_media.dart';
import 'package:flutter_application_java/pages/page_person.dart';
import 'package:flutter_application_java/pages/page_products.dart';

class HomeButtons extends StatefulWidget {
  const HomeButtons({Key? key}) : super(key: key);

  @override
  State<HomeButtons> createState() => _HomeButtonsState();
}

class _HomeButtonsState extends State<HomeButtons> {
  String nameMain = 'NAVIGATOR';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.blueGrey[100],
        child: Row(
          children: [
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  const UserAccountsDrawerHeader(
                    accountEmail: Text('User'),
                    accountName: Text('user@email.com'),
                    currentAccountPicture: CircleAvatar(
                      child: Icon(Icons.perm_identity),
                    ),
                  ),

                  /// ListTitle section
                  ///
                  ///

                  ListTile(
                    leading: const Icon(Icons.home),
                    title: const Text('Home'),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),

                  ListTile(
                    leading: const Icon(Icons.add_box),
                    title: const Text('Products'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const PageProducts())));
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.account_tree),
                    title: const Text('Categories'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const PageCategories())));
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.person),
                    title: const Text('Person'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const PagePerson())));
                    },
                  ),

                  ListTile(
                    leading: const Icon(Icons.mediation),
                    title: const Text('Media Query'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const PageMediaQuery())));
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.list),
                    title: const Text('Lists'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const PageLists())));
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.api),
                    title: const Text('API'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const PageApi())));
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.map),
                    title: const Text('Geolocation'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const PageGeo())));
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.keyboard),
                    title: const Text('Form'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const PageForm())));
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.build),
                    title: const Text('version 0.01.0'),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(nameMain),
      ),
      body: SizedBox(
        width: double.infinity,
        height: 20.0,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        ),
      ),
    );
  }
}
