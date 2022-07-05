import 'dart:convert';

import 'package:flutter_api_demo/number_fact_respo/number_fact_respo.dart';
import 'package:http/http.dart' as http;

Future<NumberFactRespo> getNumber({required String number}) async {
  final _respons =
      await http.get(Uri.parse('http://numbersapi.com/$number?json'));
  final _bodyJson = json.decode(_respons.body) as Map<String, dynamic>;
  // print(_respons.body);
  print(_bodyJson);
  final _data = NumberFactRespo.fromJson(_bodyJson);
  return _data;
}
