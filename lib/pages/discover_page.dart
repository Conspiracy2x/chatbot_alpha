import 'package:flutter/material.dart';

class DiscoverPage extends StatelessWidget {
  final List<String> users; // This should be a list of user names

  DiscoverPage({required this.users});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Discover Users')),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(child: Text(users[index][0])),
            title: Text(users[index]),
          );
        },
      ),
    );
  }
}
