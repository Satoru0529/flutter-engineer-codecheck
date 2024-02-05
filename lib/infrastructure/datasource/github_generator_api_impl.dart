import 'dart:convert';
import 'package:http/http.dart' as http;

import '../../core/exception/network_exception.dart';
import '../model/github_repo_api.dart';
import 'github_generator_api.dart';

class GitHubRepoGeneratorApiDatasourceImpl
    implements GitHubRepoGeneratorApiDatasource {
  final String _baseUrl;

  GitHubRepoGeneratorApiDatasourceImpl({required String baseUrl})
      : _baseUrl = baseUrl;

  @override
  Future<List<GitHubRepoApi>> getRepos(String searchWord) async {
    final url = Uri.parse('$_baseUrl?q=$searchWord&sort=stars&order=desc');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final responseBody = json.decode(response.body);
      final data = (responseBody['items'] as List)
          .map((e) => GitHubRepoApi.fromJson(e))
          .toList();
      return data;
    } else {
      throw NetworkException('RandomUserGeneratorApiImpl getUsers() "/"');
    }
  }
}
