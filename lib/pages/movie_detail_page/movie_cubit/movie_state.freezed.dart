// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MovieDetailsState {
  MovieDetails? get movie => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovieDetailsStateCopyWith<MovieDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailsStateCopyWith<$Res> {
  factory $MovieDetailsStateCopyWith(
          MovieDetailsState value, $Res Function(MovieDetailsState) then) =
      _$MovieDetailsStateCopyWithImpl<$Res, MovieDetailsState>;
  @useResult
  $Res call({MovieDetails? movie, bool isLoading, bool hasError});

  $MovieDetailsCopyWith<$Res>? get movie;
}

/// @nodoc
class _$MovieDetailsStateCopyWithImpl<$Res, $Val extends MovieDetailsState>
    implements $MovieDetailsStateCopyWith<$Res> {
  _$MovieDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movie = freezed,
    Object? isLoading = null,
    Object? hasError = null,
  }) {
    return _then(_value.copyWith(
      movie: freezed == movie
          ? _value.movie
          : movie // ignore: cast_nullable_to_non_nullable
              as MovieDetails?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MovieDetailsCopyWith<$Res>? get movie {
    if (_value.movie == null) {
      return null;
    }

    return $MovieDetailsCopyWith<$Res>(_value.movie!, (value) {
      return _then(_value.copyWith(movie: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MovieDetailsStateImplCopyWith<$Res>
    implements $MovieDetailsStateCopyWith<$Res> {
  factory _$$MovieDetailsStateImplCopyWith(_$MovieDetailsStateImpl value,
          $Res Function(_$MovieDetailsStateImpl) then) =
      __$$MovieDetailsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MovieDetails? movie, bool isLoading, bool hasError});

  @override
  $MovieDetailsCopyWith<$Res>? get movie;
}

/// @nodoc
class __$$MovieDetailsStateImplCopyWithImpl<$Res>
    extends _$MovieDetailsStateCopyWithImpl<$Res, _$MovieDetailsStateImpl>
    implements _$$MovieDetailsStateImplCopyWith<$Res> {
  __$$MovieDetailsStateImplCopyWithImpl(_$MovieDetailsStateImpl _value,
      $Res Function(_$MovieDetailsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movie = freezed,
    Object? isLoading = null,
    Object? hasError = null,
  }) {
    return _then(_$MovieDetailsStateImpl(
      movie: freezed == movie
          ? _value.movie
          : movie // ignore: cast_nullable_to_non_nullable
              as MovieDetails?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$MovieDetailsStateImpl implements _MovieDetailsState {
  const _$MovieDetailsStateImpl(
      {this.movie, this.isLoading = false, this.hasError = false});

  @override
  final MovieDetails? movie;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool hasError;

  @override
  String toString() {
    return 'MovieDetailsState(movie: $movie, isLoading: $isLoading, hasError: $hasError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieDetailsStateImpl &&
            (identical(other.movie, movie) || other.movie == movie) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, movie, isLoading, hasError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieDetailsStateImplCopyWith<_$MovieDetailsStateImpl> get copyWith =>
      __$$MovieDetailsStateImplCopyWithImpl<_$MovieDetailsStateImpl>(
          this, _$identity);
}

abstract class _MovieDetailsState implements MovieDetailsState {
  const factory _MovieDetailsState(
      {final MovieDetails? movie,
      final bool isLoading,
      final bool hasError}) = _$MovieDetailsStateImpl;

  @override
  MovieDetails? get movie;
  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  @JsonKey(ignore: true)
  _$$MovieDetailsStateImplCopyWith<_$MovieDetailsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
