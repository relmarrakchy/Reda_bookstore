import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('About us'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/Bookstore.png'),
            const Text('Library application \n Version 1.0 by ELMARRAKCHY Reda', textAlign: TextAlign.center, style: TextStyle(fontSize: 16)),
          ],
        ),
      )
    );
  }
}
