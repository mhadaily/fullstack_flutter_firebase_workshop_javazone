// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Session _$SessionFromJson(Map<String, dynamic> json) {
  return _Session.fromJson(json);
}

/// @nodoc
mixin _$Session {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int get roomId => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: SessionStatus.upcoming)
  SessionStatus get status => throw _privateConstructorUsedError;
  @JsonKey(fromJson: convertTimestamnpToDateTime)
  DateTime get startsAt => throw _privateConstructorUsedError;
  @JsonKey(fromJson: convertTimestamnpToDateTime)
  DateTime get endsAt => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: false)
  bool get isServiceSession => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: false)
  bool get isPlenumSession => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: [])
  List<dynamic> get speakers => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: [])
  List<dynamic> get categoryItems => throw _privateConstructorUsedError;
  @JsonKey(nullable: true)
  String? get liveUrl => throw _privateConstructorUsedError;
  @JsonKey(nullable: true)
  String? get recordingUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SessionCopyWith<Session> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionCopyWith<$Res> {
  factory $SessionCopyWith(Session value, $Res Function(Session) then) =
      _$SessionCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String title,
      String? description,
      int roomId,
      @JsonKey(defaultValue: SessionStatus.upcoming) SessionStatus status,
      @JsonKey(fromJson: convertTimestamnpToDateTime) DateTime startsAt,
      @JsonKey(fromJson: convertTimestamnpToDateTime) DateTime endsAt,
      @JsonKey(defaultValue: false) bool isServiceSession,
      @JsonKey(defaultValue: false) bool isPlenumSession,
      @JsonKey(defaultValue: []) List<dynamic> speakers,
      @JsonKey(defaultValue: []) List<dynamic> categoryItems,
      @JsonKey(nullable: true) String? liveUrl,
      @JsonKey(nullable: true) String? recordingUrl});
}

/// @nodoc
class _$SessionCopyWithImpl<$Res> implements $SessionCopyWith<$Res> {
  _$SessionCopyWithImpl(this._value, this._then);

  final Session _value;
  // ignore: unused_field
  final $Res Function(Session) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? roomId = freezed,
    Object? status = freezed,
    Object? startsAt = freezed,
    Object? endsAt = freezed,
    Object? isServiceSession = freezed,
    Object? isPlenumSession = freezed,
    Object? speakers = freezed,
    Object? categoryItems = freezed,
    Object? liveUrl = freezed,
    Object? recordingUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      roomId: roomId == freezed
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as int,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SessionStatus,
      startsAt: startsAt == freezed
          ? _value.startsAt
          : startsAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endsAt: endsAt == freezed
          ? _value.endsAt
          : endsAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isServiceSession: isServiceSession == freezed
          ? _value.isServiceSession
          : isServiceSession // ignore: cast_nullable_to_non_nullable
              as bool,
      isPlenumSession: isPlenumSession == freezed
          ? _value.isPlenumSession
          : isPlenumSession // ignore: cast_nullable_to_non_nullable
              as bool,
      speakers: speakers == freezed
          ? _value.speakers
          : speakers // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      categoryItems: categoryItems == freezed
          ? _value.categoryItems
          : categoryItems // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      liveUrl: liveUrl == freezed
          ? _value.liveUrl
          : liveUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      recordingUrl: recordingUrl == freezed
          ? _value.recordingUrl
          : recordingUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_SessionCopyWith<$Res> implements $SessionCopyWith<$Res> {
  factory _$$_SessionCopyWith(
          _$_Session value, $Res Function(_$_Session) then) =
      __$$_SessionCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String title,
      String? description,
      int roomId,
      @JsonKey(defaultValue: SessionStatus.upcoming) SessionStatus status,
      @JsonKey(fromJson: convertTimestamnpToDateTime) DateTime startsAt,
      @JsonKey(fromJson: convertTimestamnpToDateTime) DateTime endsAt,
      @JsonKey(defaultValue: false) bool isServiceSession,
      @JsonKey(defaultValue: false) bool isPlenumSession,
      @JsonKey(defaultValue: []) List<dynamic> speakers,
      @JsonKey(defaultValue: []) List<dynamic> categoryItems,
      @JsonKey(nullable: true) String? liveUrl,
      @JsonKey(nullable: true) String? recordingUrl});
}

/// @nodoc
class __$$_SessionCopyWithImpl<$Res> extends _$SessionCopyWithImpl<$Res>
    implements _$$_SessionCopyWith<$Res> {
  __$$_SessionCopyWithImpl(_$_Session _value, $Res Function(_$_Session) _then)
      : super(_value, (v) => _then(v as _$_Session));

  @override
  _$_Session get _value => super._value as _$_Session;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? roomId = freezed,
    Object? status = freezed,
    Object? startsAt = freezed,
    Object? endsAt = freezed,
    Object? isServiceSession = freezed,
    Object? isPlenumSession = freezed,
    Object? speakers = freezed,
    Object? categoryItems = freezed,
    Object? liveUrl = freezed,
    Object? recordingUrl = freezed,
  }) {
    return _then(_$_Session(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      roomId: roomId == freezed
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as int,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SessionStatus,
      startsAt: startsAt == freezed
          ? _value.startsAt
          : startsAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endsAt: endsAt == freezed
          ? _value.endsAt
          : endsAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isServiceSession: isServiceSession == freezed
          ? _value.isServiceSession
          : isServiceSession // ignore: cast_nullable_to_non_nullable
              as bool,
      isPlenumSession: isPlenumSession == freezed
          ? _value.isPlenumSession
          : isPlenumSession // ignore: cast_nullable_to_non_nullable
              as bool,
      speakers: speakers == freezed
          ? _value._speakers
          : speakers // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      categoryItems: categoryItems == freezed
          ? _value._categoryItems
          : categoryItems // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      liveUrl: liveUrl == freezed
          ? _value.liveUrl
          : liveUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      recordingUrl: recordingUrl == freezed
          ? _value.recordingUrl
          : recordingUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Session implements _Session {
  const _$_Session(
      {required this.id,
      required this.title,
      required this.description,
      required this.roomId,
      @JsonKey(defaultValue: SessionStatus.upcoming) required this.status,
      @JsonKey(fromJson: convertTimestamnpToDateTime) required this.startsAt,
      @JsonKey(fromJson: convertTimestamnpToDateTime) required this.endsAt,
      @JsonKey(defaultValue: false) required this.isServiceSession,
      @JsonKey(defaultValue: false) required this.isPlenumSession,
      @JsonKey(defaultValue: []) required final List<dynamic> speakers,
      @JsonKey(defaultValue: []) required final List<dynamic> categoryItems,
      @JsonKey(nullable: true) this.liveUrl,
      @JsonKey(nullable: true) this.recordingUrl})
      : _speakers = speakers,
        _categoryItems = categoryItems;

  factory _$_Session.fromJson(Map<String, dynamic> json) =>
      _$$_SessionFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String? description;
  @override
  final int roomId;
  @override
  @JsonKey(defaultValue: SessionStatus.upcoming)
  final SessionStatus status;
  @override
  @JsonKey(fromJson: convertTimestamnpToDateTime)
  final DateTime startsAt;
  @override
  @JsonKey(fromJson: convertTimestamnpToDateTime)
  final DateTime endsAt;
  @override
  @JsonKey(defaultValue: false)
  final bool isServiceSession;
  @override
  @JsonKey(defaultValue: false)
  final bool isPlenumSession;
  final List<dynamic> _speakers;
  @override
  @JsonKey(defaultValue: [])
  List<dynamic> get speakers {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_speakers);
  }

  final List<dynamic> _categoryItems;
  @override
  @JsonKey(defaultValue: [])
  List<dynamic> get categoryItems {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categoryItems);
  }

  @override
  @JsonKey(nullable: true)
  final String? liveUrl;
  @override
  @JsonKey(nullable: true)
  final String? recordingUrl;

  @override
  String toString() {
    return 'Session(id: $id, title: $title, description: $description, roomId: $roomId, status: $status, startsAt: $startsAt, endsAt: $endsAt, isServiceSession: $isServiceSession, isPlenumSession: $isPlenumSession, speakers: $speakers, categoryItems: $categoryItems, liveUrl: $liveUrl, recordingUrl: $recordingUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Session &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.roomId, roomId) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.startsAt, startsAt) &&
            const DeepCollectionEquality().equals(other.endsAt, endsAt) &&
            const DeepCollectionEquality()
                .equals(other.isServiceSession, isServiceSession) &&
            const DeepCollectionEquality()
                .equals(other.isPlenumSession, isPlenumSession) &&
            const DeepCollectionEquality().equals(other._speakers, _speakers) &&
            const DeepCollectionEquality()
                .equals(other._categoryItems, _categoryItems) &&
            const DeepCollectionEquality().equals(other.liveUrl, liveUrl) &&
            const DeepCollectionEquality()
                .equals(other.recordingUrl, recordingUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(roomId),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(startsAt),
      const DeepCollectionEquality().hash(endsAt),
      const DeepCollectionEquality().hash(isServiceSession),
      const DeepCollectionEquality().hash(isPlenumSession),
      const DeepCollectionEquality().hash(_speakers),
      const DeepCollectionEquality().hash(_categoryItems),
      const DeepCollectionEquality().hash(liveUrl),
      const DeepCollectionEquality().hash(recordingUrl));

  @JsonKey(ignore: true)
  @override
  _$$_SessionCopyWith<_$_Session> get copyWith =>
      __$$_SessionCopyWithImpl<_$_Session>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SessionToJson(
      this,
    );
  }
}

abstract class _Session implements Session {
  const factory _Session(
      {required final String id,
      required final String title,
      required final String? description,
      required final int roomId,
      @JsonKey(defaultValue: SessionStatus.upcoming)
          required final SessionStatus status,
      @JsonKey(fromJson: convertTimestamnpToDateTime)
          required final DateTime startsAt,
      @JsonKey(fromJson: convertTimestamnpToDateTime)
          required final DateTime endsAt,
      @JsonKey(defaultValue: false)
          required final bool isServiceSession,
      @JsonKey(defaultValue: false)
          required final bool isPlenumSession,
      @JsonKey(defaultValue: [])
          required final List<dynamic> speakers,
      @JsonKey(defaultValue: [])
          required final List<dynamic> categoryItems,
      @JsonKey(nullable: true)
          final String? liveUrl,
      @JsonKey(nullable: true)
          final String? recordingUrl}) = _$_Session;

  factory _Session.fromJson(Map<String, dynamic> json) = _$_Session.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String? get description;
  @override
  int get roomId;
  @override
  @JsonKey(defaultValue: SessionStatus.upcoming)
  SessionStatus get status;
  @override
  @JsonKey(fromJson: convertTimestamnpToDateTime)
  DateTime get startsAt;
  @override
  @JsonKey(fromJson: convertTimestamnpToDateTime)
  DateTime get endsAt;
  @override
  @JsonKey(defaultValue: false)
  bool get isServiceSession;
  @override
  @JsonKey(defaultValue: false)
  bool get isPlenumSession;
  @override
  @JsonKey(defaultValue: [])
  List<dynamic> get speakers;
  @override
  @JsonKey(defaultValue: [])
  List<dynamic> get categoryItems;
  @override
  @JsonKey(nullable: true)
  String? get liveUrl;
  @override
  @JsonKey(nullable: true)
  String? get recordingUrl;
  @override
  @JsonKey(ignore: true)
  _$$_SessionCopyWith<_$_Session> get copyWith =>
      throw _privateConstructorUsedError;
}
