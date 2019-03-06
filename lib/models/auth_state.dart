import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'auth_state.g.dart';

@immutable
@JsonSerializable()
class AuthState {
  final String username;
  final String accessToken;
  final String refreshToken;

  AuthState({
    @required this.username,
    @required this.accessToken,
    @required this.refreshToken,
  });

  factory AuthState.initial() {
    return new AuthState(username: null, accessToken: null, refreshToken: null);
  }

  AuthState copyWith(
      {String username, String accessToken, String refreshToken}) {
    return new AuthState(
      username: username ?? this.username,
      accessToken: accessToken ?? this.accessToken,
      refreshToken: refreshToken ?? this.refreshToken,
    );
  }

  factory AuthState.fromJson(Map<String, dynamic> json) =>
      _$AuthStateFromJson(json);

  Map<String, dynamic> toJson() => _$AuthStateToJson(this);
}
