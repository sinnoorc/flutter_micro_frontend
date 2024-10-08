// Example: Using the config package to manage environment-specific configurations

import 'package:common_widgets/common_widget.dart';
import 'package:config/config.dart';
import 'package:flutter/material.dart';

void main() {
  // Setting up environment configurations
  final ConfigEnvironments configEnvironments = ConfigEnvironments(
    currentEnvironment: Environments
        .local, // Specify the current environment (local, staging, production)
  );

  // Accessing environment-specific values, e.g., API base URL
  print(configEnvironments.apiBaseUrl);

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: CommonWidget(text: 'user_app'),
      ),
    );
  }
}
