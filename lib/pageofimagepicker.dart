// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
//
// class picker extends StatefulWidget {
//   const picker({super.key});
//
//   @override
//   State<picker> createState() => _pickerState();
// }
//
// class _pickerState extends State<picker> {
//   final formkey = GlobalKey<FormState>();
//   var user = TextEditingController();
//   var pass = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(body: Form(key: formkey,
//       child: Column(
//         children: [
//           Container(height: 100,
//               width: 100,
//               color: Colors.cyanAccent,
//               child: Icon(CupertinoIcons.heart)),
//           TextFormField(controller: user,
//             validator: (value) {
//               if(value!.isEmpty) {
//                 return 'empty field';
//               }
//             },),TextFormField(controller: pass,
//             validator: (value) {
//               if (value!.isEmpty) {
//                 return 'empty field';
//               }
//             },),
//           ElevatedButton(onPressed: () {
//             if(formkey.currentState!.validate());
//           }, child: Text("submit"))
//         ],
//
//       ),
//     )
//       ,
//
//     );
//   }
// }
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//











