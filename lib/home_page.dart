import 'package:flutter/material.dart';

import 'package:flutter_api_demo/apis.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final _numberInputController = TextEditingController();

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
                    onPressed: () {
                      final _number = _numberInputController.text;
                      
                      getNumber(number: _number);
                    },
                    child: Text("data")))
          ],
        ),
      ),
    );
  }
}
