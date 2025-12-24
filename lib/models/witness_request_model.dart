class WitnessRequest {
  final int id;
  final String requestDate;
  final String status;
  final String description;
  final User user;

  WitnessRequest({
    required this.id,
    required this.requestDate,
    required this.status,
    required this.description,
    required this.user,
  });

  factory WitnessRequest.fromJson(Map<String, dynamic> json) {
    return WitnessRequest(
      id: json['id'],
      requestDate: json['request_date'],
      status: json['status'],
      description: json['description'],
      user: User.fromJson(json['user']),
    );
  }
}

class User {
  final int id;
  final String name;
  final int nis;

  User({
    required this.id,
    required this.name,
    required this.nis,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      nis: json['nis'],
    );
  }
}
