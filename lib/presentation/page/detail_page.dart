import 'package:flutter/material.dart';
import '../component/info_card.dart';
import '../state/github_repo_state.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({required this.gitHubRepoState, super.key});

  final GitHubRepoState gitHubRepoState;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(gitHubRepoState.avatarUrl),
                radius: 100.0,
              ),
              const SizedBox(height: 16.0),
              Text(gitHubRepoState.fullName,
                  style: const TextStyle(
                      fontSize: 20.0, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16.0),
              Row(
                children: [
                  infoCard('Language', gitHubRepoState.language, Icons.code),
                  infoCard('Forks', gitHubRepoState.forksCount.toString(),
                      Icons.fork_right),
                ],
              ),
              Row(
                children: [
                  infoCard('Watchers', gitHubRepoState.watchersCount.toString(),
                      Icons.visibility),
                  infoCard('Forks', gitHubRepoState.forksCount.toString(),
                      Icons.fork_right),
                ],
              ),
              infoCard(
                  'Open Issues',
                  gitHubRepoState.openIssuesCount.toString(),
                  Icons.error_outline),
            ],
          ),
        ),
      ),
    );
  }
}
