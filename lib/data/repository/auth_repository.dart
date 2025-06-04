import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:tekukur_app/services/service_http_client.dart'; // Adjust the import according to your project structure

class AuthRepository {
  final ServiceHttpClient _serviceHttpClient;
  final secureStorage = FlutterSecureStorage();

  AuthRepository(this._serviceHttpClient);
  
}