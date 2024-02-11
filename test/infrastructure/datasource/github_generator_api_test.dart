import 'package:flutter_engineer_codecheck/infrastructure/datasource/github_generator_api.dart';
import 'package:flutter_engineer_codecheck/infrastructure/model/github_repo_api.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'github_generator_api_test.mocks.dart';

@GenerateNiceMocks(
    [MockSpec<http.Client>(), MockSpec<GitHubRepoGeneratorApiDatasource>()])
main() {
  late GitHubRepoGeneratorApiDatasource datasource;
  setUp(() async {
    final container = ProviderContainer();
    datasource = container.read(gitHubRepoGeneratorApiDatasourceProvider);
  });

  group('GitHubGeneratorApi', () {
    test(
      'getRepos()で検索してList<GitHubRepoApi>に変換できるか',
      () async {
        final result = await datasource.getRepos('flutter');
        expect(result, isNotNull);
        expect(result, isA<List<GitHubRepoApi>>());
        expect(result[0].fullName, isA<String>());
        expect(result[0].owner.avatarUrl, isA<String>());
        expect(result[0].language, isA<String>());
        expect(result[0].stargazersCount, isA<int>());
        expect(result[0].watchersCount, isA<int>());
        expect(result[0].forksCount, isA<int>());
        expect(result[0].openIssuesCount, isA<int>());
      },
    );
    test(
      'Mockitoでのhttpリクエスト',
      () async {
        final client = MockClient();
        when(client.get(any))
            .thenAnswer((_) async => http.Response('{"items": [30]}', 200));

        expect(
          (await client.get(Uri.parse(
                  'https://api.github.com/search/repositories?q=flutter&sort=stars&order=desc')))
              .body,
          '{"items": [30]}',
        );
      },
    );
  });
}
