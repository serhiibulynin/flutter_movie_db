import 'dart:async';

import 'package:flutter/material.dart';
import 'package:themovie_db/domain/api_client/api_client.dart';
import 'package:themovie_db/domain/data_providers/session_data_provider.dart';
import 'package:themovie_db/ui/navigation/main_navigation.dart';

class AuthModel extends ChangeNotifier {
  final _apiClient = ApiClient();
  final _sessionDataProvider = SessionDataProvider();

  final loginTextController = TextEditingController();
  final passwordTextController = TextEditingController();

  String? _errorMessage;
  String? get errorMessage => _errorMessage;

  bool _isAuthProccess = false;
  bool? get canStartAuth => !_isAuthProccess;
  bool? get isAuthProccess => _isAuthProccess;

  Future<void> auth(BuildContext context) async {
    final login = loginTextController.text;
    final password = passwordTextController.text;
    if (login.isEmpty || password.isEmpty) {
      _errorMessage = 'Enter login and email';
      notifyListeners();
      return;
    }
    _errorMessage = null;
    _isAuthProccess = true;
    notifyListeners();
    String? sessionId;

    final currentContext = context;

    try {
      sessionId = await _apiClient.auth(username: login, password: password);
    } catch (e) {
      _errorMessage = "error";
    }
    _isAuthProccess = false;

    if (errorMessage != null || sessionId == null) {
      notifyListeners();
      return;
    }

    await _sessionDataProvider.setSessionId(sessionId);
    if (context.mounted) {
      Navigator.pushReplacementNamed(
          currentContext, MainNavigationRouteNames.mainScreen);
    }
  }
}
