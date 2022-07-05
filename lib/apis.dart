import 'package:http/http.dart' as http;

Future<void> getNumber({required String number}) async {
  final _respons = await http.get(Uri.parse('http://numbersapi.com/$number?json'));
  print(_respons.body);
}
