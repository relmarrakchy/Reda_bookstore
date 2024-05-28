import 'package:flutter/material.dart';
import 'book_detail_screen.dart';
import 'add_book_screen.dart';

class BooksScreen extends StatefulWidget {
  @override
  _BooksScreenState createState() => _BooksScreenState();
}

class _BooksScreenState extends State<BooksScreen> {
  List<Map<String, String>> books = [
    {
      'title': 'Demon Slayer',
      'author': 'Author One',
      'image': 'assets/ds.jpg',
    },
    {
      'title': 'Jujtsu kaisen',
      'author': 'Author Two',
      'image': 'assets/jjk.jpg',
    },
    {
      'title': 'Solo leveling',
      'author': 'Author Two',
      'image': 'assets/solo.jpg',
    },
    {
      'title': 'Demon Slayer',
      'author': 'Author One',
      'image': 'assets/ds.jpg',
    },
    {
      'title': 'Jujtsu kaisen',
      'author': 'Author Two',
      'image': 'assets/jjk.jpg',
    },
    {
      'title': 'Solo leveling',
      'author': 'Author Two',
      'image': 'assets/solo.jpg',
    },{
      'title': 'Demon Slayer',
      'author': 'Author One',
      'image': 'assets/ds.jpg',
    },
    {
      'title': 'Jujtsu kaisen',
      'author': 'Author Two',
      'image': 'assets/jjk.jpg',
    },
    {
      'title': 'Solo leveling',
      'author': 'Author Two',
      'image': 'assets/solo.jpg',
    },{
      'title': 'Demon Slayer',
      'author': 'Author One',
      'image': 'assets/ds.jpg',
    },
    {
      'title': 'Jujtsu kaisen',
      'author': 'Author Two',
      'image': 'assets/jjk.jpg',
    },
    {
      'title': 'Solo leveling',
      'author': 'Author Two',
      'image': 'assets/solo.jpg',
    },{
      'title': 'Demon Slayer',
      'author': 'Author One',
      'image': 'assets/ds.jpg',
    },
    {
      'title': 'Jujtsu kaisen',
      'author': 'Author Two',
      'image': 'assets/jjk.jpg',
    },
    {
      'title': 'Solo leveling',
      'author': 'Author Two',
      'image': 'assets/solo.jpg',
    },{
      'title': 'Demon Slayer',
      'author': 'Author One',
      'image': 'assets/ds.jpg',
    },
    {
      'title': 'Jujtsu kaisen',
      'author': 'Author Two',
      'image': 'assets/jjk.jpg',
    },
    {
      'title': 'Solo leveling',
      'author': 'Author Two',
      'image': 'assets/solo.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Books list'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AddBookScreen()),
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: books.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.asset(books[index]['image']!),
            title: Text(books[index]['title']!),
            subtitle: Text(books[index]['author']!),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BookDetailScreen(book: books[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}