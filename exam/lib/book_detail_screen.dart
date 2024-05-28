import 'package:flutter/material.dart';

class BookDetailScreen extends StatelessWidget {
  final Map<String, String> book;

  BookDetailScreen({required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(book['title']!),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.asset(book['image']!),
            const SizedBox(height: 16),
            Text(book['title']!, style: TextStyle(fontSize: 24)),
            const SizedBox(height: 8),
            Text('Author: ' + book['author']!, style: TextStyle(fontSize: 18)),
            const SizedBox(height: 8),
            const Text('Description: Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
          ],
        ),
      ),
    );
  }
}