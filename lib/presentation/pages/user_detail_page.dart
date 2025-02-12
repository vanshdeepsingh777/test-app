import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../data/models/user_model.dart';

class UserDetailPage extends StatelessWidget {
  final User user;

  const UserDetailPage({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${user.firstName} ${user.lastName}'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            context.pop(); // Go back to ProfilePage
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(user.image),
              ),
            ),
            const SizedBox(height: 20),
            _buildInfoTile(Icons.person, "Name", "${user.firstName} ${user.lastName}"),
            _buildInfoTile(Icons.email, "Email", user.email),
            _buildInfoTile(Icons.phone, "Phone", user.phone),
            _buildInfoTile(Icons.location_on, "Address", user.address),
            _buildInfoTile(Icons.work, "Company", user.company),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoTile(IconData icon, String title, String value) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: Icon(icon),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(value),
      ),
    );
  }
}




