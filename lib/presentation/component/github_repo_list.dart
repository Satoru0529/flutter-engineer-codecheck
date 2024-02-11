import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/l10n/l10n.dart';
import '../notifier/github_repo_list_notifier.dart';
import '../state/github_repo_state.dart';
import '../page/detail_page.dart';

class GitHubRepoList extends ConsumerWidget {
  const GitHubRepoList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncState = ref.watch(gitHubRepoListNotifierProvider);
    final notifier = ref.watch(gitHubRepoListNotifierProvider.notifier);

    return asyncState.when(
      data: (repoList) {
        if (repoList.isEmpty) {
          // 検索結果が0件の場合
          if (notifier.isSearch) {
            return SliverFillRemaining(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(36.0),
                  child: Text(L10n.of(context).notFound),
                ),
              ),
            );
          } else {
            return SliverFillRemaining(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(36.0),
                  child: Text(L10n.of(context).pleaseEnter),
                ),
              ),
            );
          }
        }

        return SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              // 偶数indexでリポジトリアイテムを、奇数indexで区切り線を表示
              if (index.isEven) {
                final itemIndex = index ~/ 2;
                final item = repoList[itemIndex];
                return GitHubRepoListTile(item: item);
              } else {
                return const Divider(height: 0);
              }
            },
            // 元のリスト長の2倍にして、アイテムと区切り線のためのスペースを確保
            childCount: max(0, repoList.length * 2 - 1),
          ),
        );
      },
      error: (error, stack) => SliverFillRemaining(
        child: Center(child: Text(L10n.of(context).error)),
      ),
      loading: () => const SliverFillRemaining(
        child: Center(child: CircularProgressIndicator()),
      ),
    );
  }
}

class GitHubRepoListTile extends StatelessWidget {
  const GitHubRepoListTile({required this.item, super.key});

  final GitHubRepoState item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(item.avatarUrl),
      ),
      title: Text(item.fullName),
      subtitle: Text(item.language),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailPage(gitHubRepoState: item)));
      },
      contentPadding: const EdgeInsets.all(16),
    );
  }
}
