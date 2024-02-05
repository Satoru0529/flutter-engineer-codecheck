// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'github_repo_api.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GitHubRepoApi _$GitHubRepoApiFromJson(Map<String, dynamic> json) {
  return _GitHubRepoApi.fromJson(json);
}

/// @nodoc
mixin _$GitHubRepoApi {
  @JsonKey(name: 'full_name')
  String get fullName => throw _privateConstructorUsedError;
  Owner get owner => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  @JsonKey(name: 'stargazers_count')
  int get stargazersCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'watchers_count')
  int get watchersCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'forks_count')
  int get forksCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'open_issues_count')
  int get openIssuesCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GitHubRepoApiCopyWith<GitHubRepoApi> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GitHubRepoApiCopyWith<$Res> {
  factory $GitHubRepoApiCopyWith(
          GitHubRepoApi value, $Res Function(GitHubRepoApi) then) =
      _$GitHubRepoApiCopyWithImpl<$Res, GitHubRepoApi>;
  @useResult
  $Res call(
      {@JsonKey(name: 'full_name') String fullName,
      Owner owner,
      String language,
      @JsonKey(name: 'stargazers_count') int stargazersCount,
      @JsonKey(name: 'watchers_count') int watchersCount,
      @JsonKey(name: 'forks_count') int forksCount,
      @JsonKey(name: 'open_issues_count') int openIssuesCount});

  $OwnerCopyWith<$Res> get owner;
}

/// @nodoc
class _$GitHubRepoApiCopyWithImpl<$Res, $Val extends GitHubRepoApi>
    implements $GitHubRepoApiCopyWith<$Res> {
  _$GitHubRepoApiCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
    Object? owner = null,
    Object? language = null,
    Object? stargazersCount = null,
    Object? watchersCount = null,
    Object? forksCount = null,
    Object? openIssuesCount = null,
  }) {
    return _then(_value.copyWith(
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Owner,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      stargazersCount: null == stargazersCount
          ? _value.stargazersCount
          : stargazersCount // ignore: cast_nullable_to_non_nullable
              as int,
      watchersCount: null == watchersCount
          ? _value.watchersCount
          : watchersCount // ignore: cast_nullable_to_non_nullable
              as int,
      forksCount: null == forksCount
          ? _value.forksCount
          : forksCount // ignore: cast_nullable_to_non_nullable
              as int,
      openIssuesCount: null == openIssuesCount
          ? _value.openIssuesCount
          : openIssuesCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OwnerCopyWith<$Res> get owner {
    return $OwnerCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GitHubRepoApiImplCopyWith<$Res>
    implements $GitHubRepoApiCopyWith<$Res> {
  factory _$$GitHubRepoApiImplCopyWith(
          _$GitHubRepoApiImpl value, $Res Function(_$GitHubRepoApiImpl) then) =
      __$$GitHubRepoApiImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'full_name') String fullName,
      Owner owner,
      String language,
      @JsonKey(name: 'stargazers_count') int stargazersCount,
      @JsonKey(name: 'watchers_count') int watchersCount,
      @JsonKey(name: 'forks_count') int forksCount,
      @JsonKey(name: 'open_issues_count') int openIssuesCount});

  @override
  $OwnerCopyWith<$Res> get owner;
}

/// @nodoc
class __$$GitHubRepoApiImplCopyWithImpl<$Res>
    extends _$GitHubRepoApiCopyWithImpl<$Res, _$GitHubRepoApiImpl>
    implements _$$GitHubRepoApiImplCopyWith<$Res> {
  __$$GitHubRepoApiImplCopyWithImpl(
      _$GitHubRepoApiImpl _value, $Res Function(_$GitHubRepoApiImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
    Object? owner = null,
    Object? language = null,
    Object? stargazersCount = null,
    Object? watchersCount = null,
    Object? forksCount = null,
    Object? openIssuesCount = null,
  }) {
    return _then(_$GitHubRepoApiImpl(
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Owner,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      stargazersCount: null == stargazersCount
          ? _value.stargazersCount
          : stargazersCount // ignore: cast_nullable_to_non_nullable
              as int,
      watchersCount: null == watchersCount
          ? _value.watchersCount
          : watchersCount // ignore: cast_nullable_to_non_nullable
              as int,
      forksCount: null == forksCount
          ? _value.forksCount
          : forksCount // ignore: cast_nullable_to_non_nullable
              as int,
      openIssuesCount: null == openIssuesCount
          ? _value.openIssuesCount
          : openIssuesCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GitHubRepoApiImpl implements _GitHubRepoApi {
  const _$GitHubRepoApiImpl(
      {@JsonKey(name: 'full_name') required this.fullName,
      this.owner = const Owner(avatarUrl: ''),
      this.language = '',
      @JsonKey(name: 'stargazers_count') required this.stargazersCount,
      @JsonKey(name: 'watchers_count') required this.watchersCount,
      @JsonKey(name: 'forks_count') required this.forksCount,
      @JsonKey(name: 'open_issues_count') required this.openIssuesCount});

  factory _$GitHubRepoApiImpl.fromJson(Map<String, dynamic> json) =>
      _$$GitHubRepoApiImplFromJson(json);

  @override
  @JsonKey(name: 'full_name')
  final String fullName;
  @override
  @JsonKey()
  final Owner owner;
  @override
  @JsonKey()
  final String language;
  @override
  @JsonKey(name: 'stargazers_count')
  final int stargazersCount;
  @override
  @JsonKey(name: 'watchers_count')
  final int watchersCount;
  @override
  @JsonKey(name: 'forks_count')
  final int forksCount;
  @override
  @JsonKey(name: 'open_issues_count')
  final int openIssuesCount;

  @override
  String toString() {
    return 'GitHubRepoApi(fullName: $fullName, owner: $owner, language: $language, stargazersCount: $stargazersCount, watchersCount: $watchersCount, forksCount: $forksCount, openIssuesCount: $openIssuesCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GitHubRepoApiImpl &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.stargazersCount, stargazersCount) ||
                other.stargazersCount == stargazersCount) &&
            (identical(other.watchersCount, watchersCount) ||
                other.watchersCount == watchersCount) &&
            (identical(other.forksCount, forksCount) ||
                other.forksCount == forksCount) &&
            (identical(other.openIssuesCount, openIssuesCount) ||
                other.openIssuesCount == openIssuesCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fullName, owner, language,
      stargazersCount, watchersCount, forksCount, openIssuesCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GitHubRepoApiImplCopyWith<_$GitHubRepoApiImpl> get copyWith =>
      __$$GitHubRepoApiImplCopyWithImpl<_$GitHubRepoApiImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GitHubRepoApiImplToJson(
      this,
    );
  }
}

abstract class _GitHubRepoApi implements GitHubRepoApi {
  const factory _GitHubRepoApi(
      {@JsonKey(name: 'full_name') required final String fullName,
      final Owner owner,
      final String language,
      @JsonKey(name: 'stargazers_count') required final int stargazersCount,
      @JsonKey(name: 'watchers_count') required final int watchersCount,
      @JsonKey(name: 'forks_count') required final int forksCount,
      @JsonKey(name: 'open_issues_count')
      required final int openIssuesCount}) = _$GitHubRepoApiImpl;

  factory _GitHubRepoApi.fromJson(Map<String, dynamic> json) =
      _$GitHubRepoApiImpl.fromJson;

  @override
  @JsonKey(name: 'full_name')
  String get fullName;
  @override
  Owner get owner;
  @override
  String get language;
  @override
  @JsonKey(name: 'stargazers_count')
  int get stargazersCount;
  @override
  @JsonKey(name: 'watchers_count')
  int get watchersCount;
  @override
  @JsonKey(name: 'forks_count')
  int get forksCount;
  @override
  @JsonKey(name: 'open_issues_count')
  int get openIssuesCount;
  @override
  @JsonKey(ignore: true)
  _$$GitHubRepoApiImplCopyWith<_$GitHubRepoApiImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
