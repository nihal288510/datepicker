import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class image extends StatefulWidget {
  const image({super.key});

  @override
  State<image> createState() => _imageState();
}

class _imageState extends State<image> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(body: Column(
      children: [
        Row(
          children: [ElevatedButton(onPressed: () {
            Fluttertoast.showToast(msg:  "Hi Codesinsider !!",
                toastLength: Toast.LENGTH_LONG,
                fontSize: 20,
                backgroundColor: Colors.green);
          }, child: Container(
            height: 100,
            width: 100,
            color: Colors.cyan,
            child: Text("toast"),
          )),
    ElevatedButton(onPressed: (){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Success')));
    }, child: Text('click')






          )



          ],
        )


  ]
    )
    );
  }
}
