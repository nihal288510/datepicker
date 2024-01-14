import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class numapi extends StatefulWidget {
  numapi({super.key});

  @override
  State<numapi> createState() => _numapiState();
}

class _numapiState extends State<numapi> {
  final number = TextEditingController();
  var finalresponse;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        TextFormField(
          controller: number,
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              fetchUser(number);
            });
          },
          child: Text("send"),
        ),
        if (finalresponse != null) Text(finalresponse)
      ]),
    );
  }

  Future<dynamic> fetchUser(TextEditingController num) async {
    final response =
        await http.get(Uri.parse('http://numbersapi.com/${num.text}'));
    // Userdata = jsonDecode(response.body);

    finalresponse = response.body;
    print(finalresponse);
    setState(() {
      return finalresponse;
    });
  }
}
