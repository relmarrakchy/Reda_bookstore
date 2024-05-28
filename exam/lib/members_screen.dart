import 'package:flutter/material.dart';
import 'member_detail_screen.dart';
import 'add_member_screen.dart';

class MembersScreen extends StatefulWidget {
  @override
  _MembersScreenState createState() => _MembersScreenState();
}

class _MembersScreenState extends State<MembersScreen> {
  List<Map<String, String>> members = [
    {
      'name': 'ELMARRAKCHY Reda',
      'email': 'redachy@example.com',
      'image': 'assets/profile.jpg',
    },
    {
      'name': 'Quarti Saad',
      'email': 'saad@example.com',
      'image': 'assets/profile.jpg',
    },
    {
      'name': 'Quarti Amine',
      'email': 'amine@example.com',
      'image': 'assets/profile.jpg',
    },
    {
      'name': 'ELMARRAKCHY Reda',
      'email': 'redachy@example.com',
      'image': 'assets/profile.jpg',
    },
    {
      'name': 'Quarti Saad',
      'email': 'saad@example.com',
      'image': 'assets/profile.jpg',
    },
    {
      'name': 'Quarti Amine',
      'email': 'amine@example.com',
      'image': 'assets/profile.jpg',
    },
    {
      'name': 'ELMARRAKCHY Reda',
      'email': 'redachy@example.com',
      'image': 'assets/profile.jpg',
    },
    {
      'name': 'Quarti Saad',
      'email': 'saad@example.com',
      'image': 'assets/profile.jpg',
    },
    {
      'name': 'Quarti Amine',
      'email': 'amine@example.com',
      'image': 'assets/profile.jpg',
    },
    {
      'name': 'ELMARRAKCHY Reda',
      'email': 'redachy@example.com',
      'image': 'assets/profile.jpg',
    },
    {
      'name': 'Quarti Saad',
      'email': 'saad@example.com',
      'image': 'assets/profile.jpg',
    },
    {
      'name': 'Quarti Amine',
      'email': 'amine@example.com',
      'image': 'assets/profile.jpg',
    },
    {
      'name': 'ELMARRAKCHY Reda',
      'email': 'redachy@example.com',
      'image': 'assets/profile.jpg',
    },
    {
      'name': 'Quarti Saad',
      'email': 'saad@example.com',
      'image': 'assets/profile.jpg',
    },
    {
      'name': 'Quarti Amine',
      'email': 'amine@example.com',
      'image': 'assets/profile.jpg',
    },
    {
      'name': 'ELMARRAKCHY Reda',
      'email': 'redachy@example.com',
      'image': 'assets/profile.jpg',
    },
    {
      'name': 'Quarti Saad',
      'email': 'saad@example.com',
      'image': 'assets/profile.jpg',
    },
    {
      'name': 'Quarti Amine',
      'email': 'amine@example.com',
      'image': 'assets/profile.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Members list'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AddMemberScreen()),
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: members.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.asset(members[index]['image']!),
            title: Text(members[index]['name']!),
            subtitle: Text(members[index]['email']!),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MemberDetailScreen(member: members[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}