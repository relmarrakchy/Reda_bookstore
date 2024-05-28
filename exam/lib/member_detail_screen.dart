import 'package:flutter/material.dart';

class MemberDetailScreen extends StatelessWidget {
  final Map<String, String> member;

  MemberDetailScreen({required this.member});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(member['name']!),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.asset(member['image']!),
            const SizedBox(height: 16),
            Text(member['name']!, style: TextStyle(fontSize: 24)),
            const SizedBox(height: 8),
            Text('Email: ' + member['email']!, style: TextStyle(fontSize: 18)),
            const SizedBox(height: 8),
            const Text('Description: Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
          ],
        ),
      ),
    );
  }
}