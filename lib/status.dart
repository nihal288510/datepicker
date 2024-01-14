import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Api1 extends StatefulWidget {
  const Api1({super.key});

  @override
  State<Api1> createState() => _Api1State();
}

class _Api1State extends State<Api1> {
  var Userdata;
  Future<dynamic> fetchUser() async {
    final response =
        await http.get(Uri.parse('https://dog.ceo/api/breeds/image/random'));
    Userdata = jsonDecode(response.body);
    print(response.body);
    return Userdata;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
              child: Text(
        'API CONNECTION ',
        style: TextStyle(fontWeight: FontWeight.bold),
      ))),
      body: Column(children: [
        if (Userdata == null) Text('please press the button'),
        if (Userdata != null)
          Column(
            children: [
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    boxShadow: [BoxShadow(blurRadius: 10, spreadRadius: 10)]),
              ),
              Text('First name:${Userdata['status']}'),
            ],
          ),
        SizedBox(
          height: 20,
        ),
        ElevatedButton(
            onPressed: () {
              setState(() {
                fetchUser();
              });
            },
            child: Text('press')),
      ]),
    );
  }
}
