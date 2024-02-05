import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entity/github_repo.dart';

part 'github_repo_state.freezed.dart';

@freezed
class GitHubRepoState with _$GitHubRepoState {
  factory GitHubRepoState({
    required String fullName,
    required String avatarUrl,
    required String language,
    required int stargazersCount,
    required int watchersCount,
    required int forksCount,
    required int openIssuesCount,
  }) = _GitHubRepoState;

  factory GitHubRepoState.fromEntity(GitHubRepo gitHubRepo) {
    return GitHubRepoState(
      fullName: gitHubRepo.fullName,
      avatarUrl: gitHubRepo.owner.avatarUrl,
      language: gitHubRepo.language,
      stargazersCount: gitHubRepo.stargazersCount,
      watchersCount: gitHubRepo.watchersCount,
      forksCount: gitHubRepo.forksCount,
      openIssuesCount: gitHubRepo.openIssuesCount,
    );
  }
}
