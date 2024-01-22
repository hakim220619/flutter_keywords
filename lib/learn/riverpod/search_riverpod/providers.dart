import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

final getUserProvider = FutureProvider<Map<String, dynamic>>((ref) async {
  final response =
      await rootBundle.loadString("assets/data/words.json");
  final jsonResponse = jsonDecode(response);
  return jsonResponse;
});

final searchUserProvider = StateProvider<String>((ref) => '');
