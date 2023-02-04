import 'dart:convert';

class AuthModel {
  final String accesToken;
  final String refreshToken;
  AuthModel({
    required this.accesToken,
    required this.refreshToken,
  });

  Map<String, dynamic> toMap() {
    return {
      'acces_token': accesToken,
      'refresh_token': refreshToken,
    };
  }

  factory AuthModel.fromMap(Map<String, dynamic> map) {
    return AuthModel(
      accesToken: map['acces_token'] ?? '',
      refreshToken: map['refresh_token'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory AuthModel.fromJson(String source) =>
      AuthModel.fromMap(json.decode(source));
}
