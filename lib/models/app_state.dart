import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

import 'auth_state.dart';

part 'app_state.g.dart';

@immutable
@JsonSerializable()
class AppState {
  final AuthState authState;

  AppState({
    this.authState,
  });

  factory AppState.initial() {
    return AppState(
      authState: AuthState.initial(),
    );
  }

  AppState copyWith({AuthState authState, String test}) {
    return AppState(
      authState: authState ?? this.authState,
    );
  }

  static AppState fromJson(dynamic json) =>
      json != null ? _$AppStateFromJson(json) : AppState.initial();

  Map<String, dynamic> toJson() => _$AppStateToJson(this);
}
