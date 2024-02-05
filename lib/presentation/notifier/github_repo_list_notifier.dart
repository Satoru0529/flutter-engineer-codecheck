import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/usecase/get_github_repos_usecase.dart';
import '../state/github_repo_state.dart';

final gitHubRepoListNotifierProvider = StateNotifierProvider<
    GitHubRepoListNotifier, AsyncValue<List<GitHubRepoState>>>(
  (ref) => GitHubRepoListNotifier(
    getGitHubReposUsecase: ref.read(getUsersUsecaseProvider),
  ),
);

class GitHubRepoListNotifier
    extends StateNotifier<AsyncValue<List<GitHubRepoState>>> {
  GitHubRepoListNotifier({required GetGitHubReposUsecase getGitHubReposUsecase})
      : _getGitHubReposUsecase = getGitHubReposUsecase,
        super(const AsyncValue.data(<GitHubRepoState>[]));

  final GetGitHubReposUsecase _getGitHubReposUsecase;
  final searchController = TextEditingController();

  // レポジトリ検索
  Future<void> searchRepos() async {
    state = const AsyncValue.loading();

    state = await AsyncValue.guard(() async {
      final res = await _getGitHubReposUsecase.execute(searchController.text);
      return res.map((e) => GitHubRepoState.fromEntity(e)).toList();
    });
  }
}
