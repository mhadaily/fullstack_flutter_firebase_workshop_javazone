// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'day_room.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DayRoom {
  Day get day => throw _privateConstructorUsedError;
  Room get room => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DayRoomCopyWith<DayRoom> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DayRoomCopyWith<$Res> {
  factory $DayRoomCopyWith(DayRoom value, $Res Function(DayRoom) then) =
      _$DayRoomCopyWithImpl<$Res>;
  $Res call({Day day, Room room});

  $DayCopyWith<$Res> get day;
  $RoomCopyWith<$Res> get room;
}

/// @nodoc
class _$DayRoomCopyWithImpl<$Res> implements $DayRoomCopyWith<$Res> {
  _$DayRoomCopyWithImpl(this._value, this._then);

  final DayRoom _value;
  // ignore: unused_field
  final $Res Function(DayRoom) _then;

  @override
  $Res call({
    Object? day = freezed,
    Object? room = freezed,
  }) {
    return _then(_value.copyWith(
      day: day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as Day,
      room: room == freezed
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as Room,
    ));
  }

  @override
  $DayCopyWith<$Res> get day {
    return $DayCopyWith<$Res>(_value.day, (value) {
      return _then(_value.copyWith(day: value));
    });
  }

  @override
  $RoomCopyWith<$Res> get room {
    return $RoomCopyWith<$Res>(_value.room, (value) {
      return _then(_value.copyWith(room: value));
    });
  }
}

/// @nodoc
abstract class _$$_DayRoomCopyWith<$Res> implements $DayRoomCopyWith<$Res> {
  factory _$$_DayRoomCopyWith(
          _$_DayRoom value, $Res Function(_$_DayRoom) then) =
      __$$_DayRoomCopyWithImpl<$Res>;
  @override
  $Res call({Day day, Room room});

  @override
  $DayCopyWith<$Res> get day;
  @override
  $RoomCopyWith<$Res> get room;
}

/// @nodoc
class __$$_DayRoomCopyWithImpl<$Res> extends _$DayRoomCopyWithImpl<$Res>
    implements _$$_DayRoomCopyWith<$Res> {
  __$$_DayRoomCopyWithImpl(_$_DayRoom _value, $Res Function(_$_DayRoom) _then)
      : super(_value, (v) => _then(v as _$_DayRoom));

  @override
  _$_DayRoom get _value => super._value as _$_DayRoom;

  @override
  $Res call({
    Object? day = freezed,
    Object? room = freezed,
  }) {
    return _then(_$_DayRoom(
      day: day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as Day,
      room: room == freezed
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as Room,
    ));
  }
}

/// @nodoc

class _$_DayRoom implements _DayRoom {
  const _$_DayRoom({required this.day, required this.room});

  @override
  final Day day;
  @override
  final Room room;

  @override
  String toString() {
    return 'DayRoom(day: $day, room: $room)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DayRoom &&
            const DeepCollectionEquality().equals(other.day, day) &&
            const DeepCollectionEquality().equals(other.room, room));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(day),
      const DeepCollectionEquality().hash(room));

  @JsonKey(ignore: true)
  @override
  _$$_DayRoomCopyWith<_$_DayRoom> get copyWith =>
      __$$_DayRoomCopyWithImpl<_$_DayRoom>(this, _$identity);
}

abstract class _DayRoom implements DayRoom {
  const factory _DayRoom({required final Day day, required final Room room}) =
      _$_DayRoom;

  @override
  Day get day;
  @override
  Room get room;
  @override
  @JsonKey(ignore: true)
  _$$_DayRoomCopyWith<_$_DayRoom> get copyWith =>
      throw _privateConstructorUsedError;
}
