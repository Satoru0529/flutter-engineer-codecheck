import 'dart:convert';
import 'package:http/http.dart' as http;

import '../../core/exception/network_exception.dart';
import '../model/github_repo_api.dart';
import 'github_generator_api.dart';

class GitHubRepoGeneratorApiDatasourceImpl
    implements GitHubRepoGeneratorApiDatasource {
  GitHubRepoGeneratorApiDatasourceImpl({required String baseUrl})
      : _baseUrl = baseUrl;
  final String _baseUrl;

  @override
  Future<List<GitHubRepoApi>> getRepos(String searchWord) async {
    final url = Uri.parse('$_baseUrl?q=$searchWord&sort=stars&order=desc');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final responseBody = json.decode(response.body) as Map<String, dynamic>;
      final data = (responseBody['items'] as List)
          .map((e) => GitHubRepoApi.fromJson(e as Map<String, dynamic>))
          .toList();
      return data;
    } else {
      throw NetworkException('Github API error: ${response.statusCode}');
    }
  }
}
