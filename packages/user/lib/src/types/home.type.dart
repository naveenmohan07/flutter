// ignore: empty_constructor_bodies

class IPost {
  final int userId;
  final int id;
  final String title;

  IPost({required this.id, required this.userId, required this.title});

  IPost copyWith({int? userId, int? id, String? title}) => IPost(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      title: title ?? this.title);
}
