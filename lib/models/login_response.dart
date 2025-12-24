class LoginResponse {
  final bool success;
  final String message;
  final User user;
  final String accessToken;
  final String tokenType;

  LoginResponse({
    required this.success,
    required this.message,
    required this.user,
    required this.accessToken,
    required this.tokenType,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    return LoginResponse(
      success: json['success'],
      message: json['message'],
      user: User.fromJson(json['data']),
      accessToken: json['access_token'],
      tokenType: json['token_type'],
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
