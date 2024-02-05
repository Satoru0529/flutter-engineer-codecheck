import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../infrastructure/factory/gihub_repo_factory_impl.dart';
import '../../infrastructure/model/github_repo_api.dart';
import '../../infrastructure/model/owner.dart';
import '../entity/github_repo.dart';

final gitHubRepoFactoryProvider = Provider<GitHubRepoFactory>(
  (ref) => GitHubRepoFactoryImpl(),
);

abstract class GitHubRepoFactory {
  /// [GitHubRepo]を生成する
  GitHubRepo create({
    required String fullName,
    required Owner owner,
    required String language,
    required int stargazersCount,
    required int watchersCount,
    required int forksCount,
    required int openIssuesCount,
  });

  /// [GitHubRepoApi]から[GitHubRepo]を生成する
  GitHubRepo createFromModel(GitHubRepoApi gitHubRepoApi);
}
