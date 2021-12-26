import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:stackoverflow/model/stackHelp.dart';

Future<List<StackHelp>> initAndSet() async {
  const url = "http://muhammeddevxd.pythonanywhere.com/api/ecommerce";
  final response = await http.get(Uri.parse(url));
  if (response.statusCode == 200) {
    final Iterable decodeJson = jsonDecode(response.body);
    return decodeJson.map((item) => StackHelp.fromJson(item)).toList();
  } else {
    throw SocketException("No Internet Connection");
  }
}
