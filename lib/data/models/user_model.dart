class User {
  final String firstName;
  final String lastName;
  final String email;
  final String phone;
  final String address;
  final String company;
  final String image;

  User({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.phone,
    required this.address,
    required this.company,
    required this.image,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      firstName: json['firstName'],
      lastName: json['lastName'],
      email: json['email'],
      phone: json['phone'],
      address: json['address']['address'],
      company: json['company']['name'],
      image: json['image'],
    );
  }
}
// User Model