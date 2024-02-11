import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../application/usecase/get_github_repos_usecase_impl.dart';
import '../entity/github_repo.dart';
import '../repository/github_repo_repository.dart';

final getGithubReposUsecaseProvider = Provider<GetGitHubReposUsecase>(
  (ref) => GetGitHubReposUsecaseImpl(
    gitHubRepoRepository: ref.watch(gitHubRepoRepositoryProvider),
  ),
);

abstract class GetGitHubReposUsecase {
  Future<List<GitHubRepo>> execute(String searchWord);
}
