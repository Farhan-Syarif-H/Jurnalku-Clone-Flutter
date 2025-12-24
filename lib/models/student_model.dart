class Student {
  final int id;
  final int userId;
  final String name;
  final int nis;
  final String rombel;
  final String rayon;
  final String image;
  final DateTime createdAt;

  Student({
    required this.id,
    required this.userId,
    required this.name,
    required this.nis,
    required this.rombel,
    required this.rayon,
    required this.image,
    required this.createdAt,
  });

  factory Student.fromJson(Map<String, dynamic> json) {
    return Student(
      id: json['id'],
      userId: json['user_id'],
      name: json['name_user'],
      nis: json['nis_user'],
      rombel: json['rombel'],
      rayon: json['rayon'],
      image: json['image'],
      createdAt: DateTime.parse(json['created_at']),
    );
  }
}
