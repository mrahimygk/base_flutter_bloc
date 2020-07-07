class User {
  final String email;
  final String phone;
  final String avatar;

  User(this.email, this.phone, this.avatar);

  factory User.fromMap(Map<String, dynamic> json) {
    return User(json['email'], json['phone'], json['avatar']);
  }

  Map<String, dynamic> toMap() {
    final data = Map<String, dynamic>();
    data['email'] = email;
    data['avatar'] = avatar;
    return data;
  }
}
