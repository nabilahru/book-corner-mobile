import 'package:flutter/material.dart';
import 'package:book_corner/models/product_entry.dart';

class DetailProductPage extends StatelessWidget {
  final ProductEntry product;

  const DetailProductPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Book Corner',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        // Warna latar belakang AppBar diambil dari skema warna tema aplikasi.
        backgroundColor: Theme.of(context).colorScheme.primary,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView( // Make the entire body scrollable
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(
              Icons.book, // Icon representing the book
              size: 100, // Icon size
              color: Colors.indigo, // Icon color
            ),
            
            const SizedBox(height: 10),
            Text(
              product.fields.name, 
              style: const TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w900,
                color: Colors.indigo,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              product.fields.genreCategory,
              style: const TextStyle(
                fontSize: 18.0,
                fontStyle: FontStyle.italic,
                color: Colors.blueGrey,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "Rp${product.fields.price}", 
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 244, 54, 146),
              ),
            ),
            const SizedBox(height: 10),
            const Text("Description"),
            const SizedBox(height: 10),
            Text(
              product.fields.description,
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
