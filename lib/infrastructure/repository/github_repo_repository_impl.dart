import '../../core/exception/network_exception.dart';
import '../../domain/entity/github_repo.dart';
import '../../domain/factory/github_repo_factory.dart';
import '../../domain/repository/github_repo_repository.dart';
import '../datasource/github_generator_api.dart';

class GitHubRepoRepositoryImpl implements GitHubRepoRepository {
  GitHubRepoRepositoryImpl({
    required GitHubRepoGeneratorApiDatasource gitHubRepoGeneratorApi,
    required GitHubRepoFactory gitHubRepoFactory,
  })  : _gitHubRepoGeneratorApi = gitHubRepoGeneratorApi,
        _gitHubRepoFactory = gitHubRepoFactory;

  final GitHubRepoGeneratorApiDatasource _gitHubRepoGeneratorApi;
  final GitHubRepoFactory _gitHubRepoFactory;

  @override
  Future<List<GitHubRepo>> searchRepos(String searchWord) async {
    try {
      final res = await _gitHubRepoGeneratorApi.getRepos(searchWord);
      return res
          .map(
            _gitHubRepoFactory.createFromModel,
          )
          .toList();
    } on Exception catch (e) {
      throw NetworkException(e.toString());
    }
  }
}
