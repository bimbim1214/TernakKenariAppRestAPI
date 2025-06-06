import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;

class ServiceHttpClient {
  final String baseUrl = 'https://10.0.0.2:8000/api';
  final secureStorage = FlutterSecureStorage();

  //post
  Future<http.Response> post(String endpoint, Map<String, dynamic> map, {Map<String, String>? headers, Object? body}) async {
    final url = Uri.parse('$baseUrl/$endpoint');
    try{
      final response = await http.post(
        url,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
        body: json.encode(body),
      );
      return response;
    } catch (e) {
      throw Exception('Post request failed: $e');
    }
  }

  //post with token
  Future<http.Response> postWithToken(
    String endpoint, 
    Map<String, dynamic> body,
    ) async {
    final token = await secureStorage.read(key: 'token');
    final url = Uri.parse('$baseUrl/$endpoint');
    try {
      final response = await http.post(
        url,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        },
        body: json.encode(body),
      );
      return response;
    } catch (e) {
      throw Exception('Post request failed: $e');
    }
  }
  //get
  Future<http.Response> get(String endpoint) async {
    final token = await secureStorage.read(key: 'token');
    final url = Uri.parse('$baseUrl/$endpoint');
    try {
      final response = await http.get(
        url,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );
      return response;
    } catch (e) {
      throw Exception('Get request failed: $e');
    }
  }
}