import '../../domain/entity/github_repo.dart';
import '../../domain/repository/github_repo_repository.dart';
import '../../domain/usecase/get_github_repos_usecase.dart';

class GetGitHubReposUsecaseImpl implements GetGitHubReposUsecase {
  GetGitHubReposUsecaseImpl({
    required GitHubRepoRepository gitHubRepoRepository,
  }) : _gitHubRepoRepository = gitHubRepoRepository;

  final GitHubRepoRepository _gitHubRepoRepository;

  @override
  Future<List<GitHubRepo>> execute(String searchWord) async {
    return _gitHubRepoRepository.searchRepos(searchWord);
  }
}
