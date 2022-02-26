import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';

final http.Client mockClient = MockClient(_mockHandler);

Future<http.Response> _mockHandler(http.Request request) async {
  var decodeJson = Map<String, dynamic>.from(
      json.decode(request.body) as Map<String, dynamic>);
  if (decodeJson['email'] == 'root' && decodeJson['password'] == 'password') {
    return http.Response('', 200);
  }
  return http.Response('', 401);
}
