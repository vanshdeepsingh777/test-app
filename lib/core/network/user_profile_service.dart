import 'package:http/http.dart' as http;
import 'dart:convert';
import '../../data/models/user_model.dart';

class UserController {
  Future<List<User>> fetchUsers() async {
    final response = await http.get(Uri.parse('https://dummyjson.com/users'));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      List users = data['users'];
      return users.map((user) => User.fromJson(user)).toList();
    } else {
      throw Exception('Failed to load users');
    }
  }
}