import 'package:flutter_engineer_codecheck/infrastructure/model/owner.dart';

class GitHubRepo {
  GitHubRepo({
    required this.fullName,
    required this.owner,
    required this.language,
    required this.stargazersCount,
    required this.watchersCount,
    required this.forksCount,
    required this.openIssuesCount,
  });

  final String fullName;
  final Owner owner;
  final String language;
  final int stargazersCount;
  final int watchersCount;
  final int forksCount;
  final int openIssuesCount;
}
