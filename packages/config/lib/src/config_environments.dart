import 'package:config/src/environments.dart';

/// The [ConfigEnvironments] class manages environment-specific configurations such as base URLs, chat URLs, and socket URLs.
/// It retrieves the current environment and its corresponding URLs based on the provided environment name.
class ConfigEnvironments {
  final String currentEnvironment;

  ConfigEnvironments({required this.currentEnvironment});

  static const List<Map<String, String>> _availableEnvironments = [
    {
      'env': Environments.local,
      'apiBaseUrl': 'your_api_url',
    },
    {
      'env': Environments.stage,
      'apiBaseUrl': 'your_api_url',
    },
    {
      'env': Environments.prod,
      'apiBaseUrl': 'your_api_url',
    },
  ];

  String get apiBaseUrl {
    return _availableEnvironments.firstWhere(
        (element) => element['env'] == currentEnvironment)['apiBaseUrl']!;
  }
}
