import 'package:flutter/material.dart';

import '../state/github_repo_state.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({required this.gitHubRepoState, super.key});

  final GitHubRepoState gitHubRepoState;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(gitHubRepoState.fullName)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(gitHubRepoState.fullName),
            Text(gitHubRepoState.avatarUrl),
            Text(gitHubRepoState.language),
            Text(gitHubRepoState.stargazersCount.toString()),
            Text(gitHubRepoState.watchersCount.toString()),
            Text(gitHubRepoState.forksCount.toString()),
            Text(gitHubRepoState.openIssuesCount.toString()),
          ],
        ),
      ),
    );
  }
}
