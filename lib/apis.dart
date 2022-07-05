import 'package:http/http.dart' as http;

Future<void> getNumber({required int number}) async {
  final _respons = await http.get(Uri.parse('http://numbersapi.com/54?json'));
  print(_respons.body);
}
