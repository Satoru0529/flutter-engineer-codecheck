import 'package:freezed_annotation/freezed_annotation.dart';

import 'owner.dart';

part 'github_repo_api.freezed.dart';
part 'github_repo_api.g.dart';

@freezed
class GitHubRepoApi with _$GitHubRepoApi {
  const factory GitHubRepoApi({
    @JsonKey(name: 'full_name') required String fullName,
    @Default(Owner(avatarUrl: '')) Owner owner,
    @Default('') String language,
    @JsonKey(name: 'stargazers_count') required int stargazersCount,
    @JsonKey(name: 'watchers_count') required int watchersCount,
    @JsonKey(name: 'forks_count') required int forksCount,
    @JsonKey(name: 'open_issues_count') required int openIssuesCount,
  }) = _GitHubRepoApi;

  factory GitHubRepoApi.fromJson(Map<String, dynamic> json) =>
      _$GitHubRepoApiFromJson(json);
}
