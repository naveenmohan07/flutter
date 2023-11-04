// ignore: empty_constructor_bodies

class IPost {
  int? userId;
  int? id;
  String? title;

  IPost({this.id, this.userId, this.title});

  IPost copyWith({int? userId, int? id, String? title}) => IPost(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      title: title ?? this.title);
}
