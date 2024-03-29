import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/l10n/l10n.dart';
import '../notifier/github_repo_list_notifier.dart';

class SearchTextField extends ConsumerWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.watch(gitHubRepoListNotifierProvider.notifier);

    return Container(
      width: 340,
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: TextField(
        controller: notifier.searchController,
        decoration: InputDecoration(
          hintText: L10n.of(context).search,
          fillColor: Theme.of(context).colorScheme.onSurface.withOpacity(0.12),
          filled: true,
          border: InputBorder.none,
          prefixIcon: const Icon(Icons.search),
          suffixIcon: IconButton(
            icon: const Icon(Icons.close),
            onPressed: notifier.searchController.clear,
          ),
        ),
        onSubmitted: (_) => notifier.searchRepos(),
      ),
    );
  }
}
