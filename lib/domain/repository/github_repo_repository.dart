import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../infrastructure/datasource/github_generator_api.dart';
import '../../infrastructure/repository/github_repo_repository_impl.dart';
import '../entity/github_repo.dart';
import '../factory/github_repo_factory.dart';

final gitHubRepoRepositoryProvider = Provider<GitHubRepoRepository>(
  (ref) => GitHubRepoRepositoryImpl(
    gitHubRepoGeneratorApi: ref.watch(gitHubRepoGeneratorApiDatasourceProvider),
    gitHubRepoFactory: ref.watch(gitHubRepoFactoryProvider),
  ),
);

abstract class GitHubRepoRepository {
  /// GitHubレポジトリ一覧の取得
  Future<List<GitHubRepo>> searchRepos(String searchWord);
}
