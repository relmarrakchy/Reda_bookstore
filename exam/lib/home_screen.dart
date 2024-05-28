import 'package:flutter/material.dart';
import 'books_screen.dart';
import 'members_screen.dart';
import 'about_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reda Bookstore'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
              child: Column(
                children: [
                  Image.asset('assets/Bookstore.png', height: 80),
                  const Text('ELMARRAKCHY Reda', style: TextStyle(color: Colors.white, fontSize: 20)),
                ],
              ),
            ),
            ListTile(
              title: const Text('Home'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
              },
            ),
            ListTile(
              title: const Text('Books'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => BooksScreen()));
              },
            ),
            ListTile(
              title: const Text('Members'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => MembersScreen()));
              },
            ),
            ListTile(
              title: const Text('About'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => AboutScreen()));
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/Bookstore.png'),
            const Text('Welcome to our library !', style: TextStyle(fontSize: 24)),
          ],
        ),
      ),
    );
  }
}