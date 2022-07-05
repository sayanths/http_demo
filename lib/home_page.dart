import 'package:flutter/material.dart';

import 'package:flutter_api_demo/apis.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _numberInputController = TextEditingController();

  String _resultText = 'type text and show result';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: _numberInputController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'number',
              ),
            ),
            Center(
                child: ElevatedButton(
                    onPressed: () async {
                      final _number = _numberInputController.text;

                      final result = await getNumber(number: _number);
                      print(result);
                      setState(() {
                        _resultText = result.text ?? 'no text found';
                      });
                    },
                    child: Text("data"))),
                    Text(_resultText),
          ],
        ),
      ),
    );
  }
}
