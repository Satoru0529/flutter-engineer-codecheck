import '../../domain/entity/github_repo.dart';
import '../../domain/factory/github_repo_factory.dart';
import '../model/github_repo_api.dart';
import '../model/owner.dart';

class GitHubRepoFactoryImpl implements GitHubRepoFactory {
  GitHubRepoFactoryImpl();

  @override
  GitHubRepo create({
    required String fullName,
    required Owner owner,
    required String language,
    required int stargazersCount,
    required int watchersCount,
    required int forksCount,
    required int openIssuesCount,
  }) {
    return GitHubRepo(
      fullName: fullName,
      owner: owner,
      language: language,
      stargazersCount: stargazersCount,
      watchersCount: watchersCount,
      forksCount: forksCount,
      openIssuesCount: openIssuesCount,
    );
  }

  @override
  GitHubRepo createFromModel(GitHubRepoApi gitHubRepoApi) {
    return GitHubRepo(
      fullName: gitHubRepoApi.fullName,
      owner: gitHubRepoApi.owner,
      language: gitHubRepoApi.language,
      stargazersCount: gitHubRepoApi.stargazersCount,
      watchersCount: gitHubRepoApi.watchersCount,
      forksCount: gitHubRepoApi.forksCount,
      openIssuesCount: gitHubRepoApi.openIssuesCount,
    );
  }
}
