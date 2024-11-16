import 'package:book_corner/screens/list_productentry.dart';
import 'package:flutter/material.dart';
import 'package:book_corner/screens/menu.dart';
import 'package:book_corner/screens/productentry_form.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
            ),
            child: const Column(
              children: [
                Text(
                  'Book Corner',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Padding(padding: EdgeInsets.all(8)),
                Text(
                  "A corner full of worlds waiting for you!",
                  textAlign: TextAlign.center, //align center
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
            ListTile(
              leading: const Icon(Icons.home_outlined),
              title: const Text('Home'),
              // Bagian redirection ke MyHomePage
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyHomePage(),
                    ));
              },
            ),

            ListTile(
              leading: const Icon(Icons.add),
              title: const Text('Add Product'),
              // Bagian redirection ke ProductEntryformPge
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProductEntryformPge(),
                    ));
              },
            ),

            ListTile(
              leading: const Icon(Icons.book),
              title: const Text('All Product'),
              onTap: () {
                  // Route menu ke halaman product
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ProductEntryPage()),
                  );
              },
            ),
        ],
      ),
    );
  }
}