import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/github_repo_api.dart';
import 'github_generator_api_impl.dart';

final gitHubRepoGeneratorApiDatasourceProvider =
    Provider<GitHubRepoGeneratorApiDatasource>(
  (ref) => GitHubRepoGeneratorApiDatasourceImpl(
    baseUrl: 'https://api.github.com/search/repositories',
  ),
);

abstract class GitHubRepoGeneratorApiDatasource {
  Future<List<GitHubRepoApi>> getRepos(String searchWord);
}
