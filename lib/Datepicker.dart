// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
//
// class Date extends StatefulWidget {
//   const Date({super.key});
//
//   @override
//   State<Date> createState() => _DateState();
// }
//
// class _DateState extends State<Date> {
//   DateTime? selectdate;
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       body:Column(
//         children: [
//           ElevatedButton(onPressed: ()async{
//       var d=await showDatePicker(context:
//       context,
//           initialDate: DateTime.now(),
//           firstDate: DateTime(1999-12-12),
//           lastDate: DateTime(2100-10-12));
//
//             if(d!=null){
//               print(d);
//               print(DateFormat("dd-MM-yy").format(d!));
//               setState(() {
//                 selectdate=d;
//               });
//             }
//
//
//           }, child: Text("date")
//     ),Column(
//             children: [
//             ],
//
//
//
//           )
//             ],
//           )
//
//
//     );
//   }
// }
