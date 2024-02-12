import 'package:flutter/material.dart';

import '../component/github_repo_list.dart';
import '../component/search_text_field.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              title: SearchTextField(),
              pinned: true,
            ),
            GitHubRepoList(),
          ],
        ),
      ),
    );
  }
}
