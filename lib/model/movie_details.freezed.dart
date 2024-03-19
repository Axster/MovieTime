// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MovieDetails _$MovieDetailsFromJson(Map<String, dynamic> json) {
  return _MovieDetails.fromJson(json);
}

/// @nodoc
mixin _$MovieDetails {
  bool get adult => throw _privateConstructorUsedError;
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_language')
  String get originalLanguage => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_title')
  String get originalTitle => throw _privateConstructorUsedError;
  String get overview => throw _privateConstructorUsedError;
  @JsonKey(name: 'poster_path')
  String? get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'release_date')
  String get releaseDate => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_average')
  double get voteAverage => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_count')
  int get voteCount => throw _privateConstructorUsedError;
  List<Genre> get genres => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieDetailsCopyWith<MovieDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailsCopyWith<$Res> {
  factory $MovieDetailsCopyWith(
          MovieDetails value, $Res Function(MovieDetails) then) =
      _$MovieDetailsCopyWithImpl<$Res, MovieDetails>;
  @useResult
  $Res call(
      {bool adult,
      @JsonKey(name: 'backdrop_path') String? backdropPath,
      int id,
      @JsonKey(name: 'original_language') String originalLanguage,
      @JsonKey(name: 'original_title') String originalTitle,
      String overview,
      @JsonKey(name: 'poster_path') String? posterPath,
      @JsonKey(name: 'release_date') String releaseDate,
      String title,
      @JsonKey(name: 'vote_average') double voteAverage,
      @JsonKey(name: 'vote_count') int voteCount,
      List<Genre> genres});
}

/// @nodoc
class _$MovieDetailsCopyWithImpl<$Res, $Val extends MovieDetails>
    implements $MovieDetailsCopyWith<$Res> {
  _$MovieDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adult = null,
    Object? backdropPath = freezed,
    Object? id = null,
    Object? originalLanguage = null,
    Object? originalTitle = null,
    Object? overview = null,
    Object? posterPath = freezed,
    Object? releaseDate = null,
    Object? title = null,
    Object? voteAverage = null,
    Object? voteCount = null,
    Object? genres = null,
  }) {
    return _then(_value.copyWith(
      adult: null == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      originalLanguage: null == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      originalTitle: null == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      voteAverage: null == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      voteCount: null == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int,
      genres: null == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Genre>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieDetailsImplCopyWith<$Res>
    implements $MovieDetailsCopyWith<$Res> {
  factory _$$MovieDetailsImplCopyWith(
          _$MovieDetailsImpl value, $Res Function(_$MovieDetailsImpl) then) =
      __$$MovieDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool adult,
      @JsonKey(name: 'backdrop_path') String? backdropPath,
      int id,
      @JsonKey(name: 'original_language') String originalLanguage,
      @JsonKey(name: 'original_title') String originalTitle,
      String overview,
      @JsonKey(name: 'poster_path') String? posterPath,
      @JsonKey(name: 'release_date') String releaseDate,
      String title,
      @JsonKey(name: 'vote_average') double voteAverage,
      @JsonKey(name: 'vote_count') int voteCount,
      List<Genre> genres});
}

/// @nodoc
class __$$MovieDetailsImplCopyWithImpl<$Res>
    extends _$MovieDetailsCopyWithImpl<$Res, _$MovieDetailsImpl>
    implements _$$MovieDetailsImplCopyWith<$Res> {
  __$$MovieDetailsImplCopyWithImpl(
      _$MovieDetailsImpl _value, $Res Function(_$MovieDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adult = null,
    Object? backdropPath = freezed,
    Object? id = null,
    Object? originalLanguage = null,
    Object? originalTitle = null,
    Object? overview = null,
    Object? posterPath = freezed,
    Object? releaseDate = null,
    Object? title = null,
    Object? voteAverage = null,
    Object? voteCount = null,
    Object? genres = null,
  }) {
    return _then(_$MovieDetailsImpl(
      adult: null == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      originalLanguage: null == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      originalTitle: null == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      voteAverage: null == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      voteCount: null == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int,
      genres: null == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Genre>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieDetailsImpl extends _MovieDetails {
  const _$MovieDetailsImpl(
      {required this.adult,
      @JsonKey(name: 'backdrop_path') this.backdropPath,
      required this.id,
      @JsonKey(name: 'original_language') required this.originalLanguage,
      @JsonKey(name: 'original_title') required this.originalTitle,
      required this.overview,
      @JsonKey(name: 'poster_path') this.posterPath,
      @JsonKey(name: 'release_date') required this.releaseDate,
      required this.title,
      @JsonKey(name: 'vote_average') required this.voteAverage,
      @JsonKey(name: 'vote_count') required this.voteCount,
      required final List<Genre> genres})
      : _genres = genres,
        super._();

  factory _$MovieDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieDetailsImplFromJson(json);

  @override
  final bool adult;
  @override
  @JsonKey(name: 'backdrop_path')
  final String? backdropPath;
  @override
  final int id;
  @override
  @JsonKey(name: 'original_language')
  final String originalLanguage;
  @override
  @JsonKey(name: 'original_title')
  final String originalTitle;
  @override
  final String overview;
  @override
  @JsonKey(name: 'poster_path')
  final String? posterPath;
  @override
  @JsonKey(name: 'release_date')
  final String releaseDate;
  @override
  final String title;
  @override
  @JsonKey(name: 'vote_average')
  final double voteAverage;
  @override
  @JsonKey(name: 'vote_count')
  final int voteCount;
  final List<Genre> _genres;
  @override
  List<Genre> get genres {
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genres);
  }

  @override
  String toString() {
    return 'MovieDetails(adult: $adult, backdropPath: $backdropPath, id: $id, originalLanguage: $originalLanguage, originalTitle: $originalTitle, overview: $overview, posterPath: $posterPath, releaseDate: $releaseDate, title: $title, voteAverage: $voteAverage, voteCount: $voteCount, genres: $genres)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieDetailsImpl &&
            (identical(other.adult, adult) || other.adult == adult) &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.originalLanguage, originalLanguage) ||
                other.originalLanguage == originalLanguage) &&
            (identical(other.originalTitle, originalTitle) ||
                other.originalTitle == originalTitle) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage) &&
            (identical(other.voteCount, voteCount) ||
                other.voteCount == voteCount) &&
            const DeepCollectionEquality().equals(other._genres, _genres));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      adult,
      backdropPath,
      id,
      originalLanguage,
      originalTitle,
      overview,
      posterPath,
      releaseDate,
      title,
      voteAverage,
      voteCount,
      const DeepCollectionEquality().hash(_genres));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieDetailsImplCopyWith<_$MovieDetailsImpl> get copyWith =>
      __$$MovieDetailsImplCopyWithImpl<_$MovieDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieDetailsImplToJson(
      this,
    );
  }
}

abstract class _MovieDetails extends MovieDetails {
  const factory _MovieDetails(
      {required final bool adult,
      @JsonKey(name: 'backdrop_path') final String? backdropPath,
      required final int id,
      @JsonKey(name: 'original_language')
      required final String originalLanguage,
      @JsonKey(name: 'original_title') required final String originalTitle,
      required final String overview,
      @JsonKey(name: 'poster_path') final String? posterPath,
      @JsonKey(name: 'release_date') required final String releaseDate,
      required final String title,
      @JsonKey(name: 'vote_average') required final double voteAverage,
      @JsonKey(name: 'vote_count') required final int voteCount,
      required final List<Genre> genres}) = _$MovieDetailsImpl;
  const _MovieDetails._() : super._();

  factory _MovieDetails.fromJson(Map<String, dynamic> json) =
      _$MovieDetailsImpl.fromJson;

  @override
  bool get adult;
  @override
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath;
  @override
  int get id;
  @override
  @JsonKey(name: 'original_language')
  String get originalLanguage;
  @override
  @JsonKey(name: 'original_title')
  String get originalTitle;
  @override
  String get overview;
  @override
  @JsonKey(name: 'poster_path')
  String? get posterPath;
  @override
  @JsonKey(name: 'release_date')
  String get releaseDate;
  @override
  String get title;
  @override
  @JsonKey(name: 'vote_average')
  double get voteAverage;
  @override
  @JsonKey(name: 'vote_count')
  int get voteCount;
  @override
  List<Genre> get genres;
  @override
  @JsonKey(ignore: true)
  _$$MovieDetailsImplCopyWith<_$MovieDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
