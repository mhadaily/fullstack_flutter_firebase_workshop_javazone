// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Notification _$NotificationFromJson(Map<String, dynamic> json) {
  return _Notification.fromJson(json);
}

/// @nodoc
mixin _$Notification {
  Map<String, dynamic> get notification => throw _privateConstructorUsedError;
  Map<String, dynamic> get data => throw _privateConstructorUsedError;
  NotificationAction get action => throw _privateConstructorUsedError;
  NotificationScreen get screen => throw _privateConstructorUsedError;
  bool get isForground => throw _privateConstructorUsedError;
  @JsonKey(fromJson: sentTimeFromJson)
  DateTime? get sentTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationCopyWith<Notification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationCopyWith<$Res> {
  factory $NotificationCopyWith(
          Notification value, $Res Function(Notification) then) =
      _$NotificationCopyWithImpl<$Res>;
  $Res call(
      {Map<String, dynamic> notification,
      Map<String, dynamic> data,
      NotificationAction action,
      NotificationScreen screen,
      bool isForground,
      @JsonKey(fromJson: sentTimeFromJson) DateTime? sentTime});
}

/// @nodoc
class _$NotificationCopyWithImpl<$Res> implements $NotificationCopyWith<$Res> {
  _$NotificationCopyWithImpl(this._value, this._then);

  final Notification _value;
  // ignore: unused_field
  final $Res Function(Notification) _then;

  @override
  $Res call({
    Object? notification = freezed,
    Object? data = freezed,
    Object? action = freezed,
    Object? screen = freezed,
    Object? isForground = freezed,
    Object? sentTime = freezed,
  }) {
    return _then(_value.copyWith(
      notification: notification == freezed
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as NotificationAction,
      screen: screen == freezed
          ? _value.screen
          : screen // ignore: cast_nullable_to_non_nullable
              as NotificationScreen,
      isForground: isForground == freezed
          ? _value.isForground
          : isForground // ignore: cast_nullable_to_non_nullable
              as bool,
      sentTime: sentTime == freezed
          ? _value.sentTime
          : sentTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$$_NotificationCopyWith<$Res>
    implements $NotificationCopyWith<$Res> {
  factory _$$_NotificationCopyWith(
          _$_Notification value, $Res Function(_$_Notification) then) =
      __$$_NotificationCopyWithImpl<$Res>;
  @override
  $Res call(
      {Map<String, dynamic> notification,
      Map<String, dynamic> data,
      NotificationAction action,
      NotificationScreen screen,
      bool isForground,
      @JsonKey(fromJson: sentTimeFromJson) DateTime? sentTime});
}

/// @nodoc
class __$$_NotificationCopyWithImpl<$Res>
    extends _$NotificationCopyWithImpl<$Res>
    implements _$$_NotificationCopyWith<$Res> {
  __$$_NotificationCopyWithImpl(
      _$_Notification _value, $Res Function(_$_Notification) _then)
      : super(_value, (v) => _then(v as _$_Notification));

  @override
  _$_Notification get _value => super._value as _$_Notification;

  @override
  $Res call({
    Object? notification = freezed,
    Object? data = freezed,
    Object? action = freezed,
    Object? screen = freezed,
    Object? isForground = freezed,
    Object? sentTime = freezed,
  }) {
    return _then(_$_Notification(
      notification: notification == freezed
          ? _value._notification
          : notification // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      data: data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as NotificationAction,
      screen: screen == freezed
          ? _value.screen
          : screen // ignore: cast_nullable_to_non_nullable
              as NotificationScreen,
      isForground: isForground == freezed
          ? _value.isForground
          : isForground // ignore: cast_nullable_to_non_nullable
              as bool,
      sentTime: sentTime == freezed
          ? _value.sentTime
          : sentTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Notification implements _Notification {
  const _$_Notification(
      {required final Map<String, dynamic> notification,
      required final Map<String, dynamic> data,
      this.action = NotificationAction.unknown,
      this.screen = NotificationScreen.unknown,
      this.isForground = false,
      @JsonKey(fromJson: sentTimeFromJson) this.sentTime})
      : _notification = notification,
        _data = data;

  factory _$_Notification.fromJson(Map<String, dynamic> json) =>
      _$$_NotificationFromJson(json);

  final Map<String, dynamic> _notification;
  @override
  Map<String, dynamic> get notification {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_notification);
  }

  final Map<String, dynamic> _data;
  @override
  Map<String, dynamic> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  @JsonKey()
  final NotificationAction action;
  @override
  @JsonKey()
  final NotificationScreen screen;
  @override
  @JsonKey()
  final bool isForground;
  @override
  @JsonKey(fromJson: sentTimeFromJson)
  final DateTime? sentTime;

  @override
  String toString() {
    return 'Notification(notification: $notification, data: $data, action: $action, screen: $screen, isForground: $isForground, sentTime: $sentTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Notification &&
            const DeepCollectionEquality()
                .equals(other._notification, _notification) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality().equals(other.action, action) &&
            const DeepCollectionEquality().equals(other.screen, screen) &&
            const DeepCollectionEquality()
                .equals(other.isForground, isForground) &&
            const DeepCollectionEquality().equals(other.sentTime, sentTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_notification),
      const DeepCollectionEquality().hash(_data),
      const DeepCollectionEquality().hash(action),
      const DeepCollectionEquality().hash(screen),
      const DeepCollectionEquality().hash(isForground),
      const DeepCollectionEquality().hash(sentTime));

  @JsonKey(ignore: true)
  @override
  _$$_NotificationCopyWith<_$_Notification> get copyWith =>
      __$$_NotificationCopyWithImpl<_$_Notification>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NotificationToJson(
      this,
    );
  }
}

abstract class _Notification implements Notification {
  const factory _Notification(
          {required final Map<String, dynamic> notification,
          required final Map<String, dynamic> data,
          final NotificationAction action,
          final NotificationScreen screen,
          final bool isForground,
          @JsonKey(fromJson: sentTimeFromJson) final DateTime? sentTime}) =
      _$_Notification;

  factory _Notification.fromJson(Map<String, dynamic> json) =
      _$_Notification.fromJson;

  @override
  Map<String, dynamic> get notification;
  @override
  Map<String, dynamic> get data;
  @override
  NotificationAction get action;
  @override
  NotificationScreen get screen;
  @override
  bool get isForground;
  @override
  @JsonKey(fromJson: sentTimeFromJson)
  DateTime? get sentTime;
  @override
  @JsonKey(ignore: true)
  _$$_NotificationCopyWith<_$_Notification> get copyWith =>
      throw _privateConstructorUsedError;
}
