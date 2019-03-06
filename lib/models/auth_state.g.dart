// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthState _$AuthStateFromJson(Map<String, dynamic> json) {
  return AuthState(
      username: json['username'] as String,
      accessToken: json['accessToken'] as String,
      refreshToken: json['refreshToken'] as String);
}

Map<String, dynamic> _$AuthStateToJson(AuthState instance) => <String, dynamic>{
      'username': instance.username,
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken
    };
