// import 'dart:core';

// import 'package:flutter/material.dart';

// import '../composant/login.dart';
// import '../composant/roundbutton.dart';

// const List<String> items1 = [
//   "Brazil vs Cameron",
//   "Brazil Vs Suisse ",
//   "Qatar vs Netherland",
//   "England vs Usa",
//   "Argentina vs Saudi Arabia",
//   "Iran Vs Usa",
//   "Iran Vs England",
//   "Portugal Vs Ghana",
//   "Portugal Vs Ureguay",
//   "France Vs Tunisia",
//   "Spain Vs Germany",
//   "Japan Vs Germany",
//   "Morocoo Vs Belgium",
//   "Canada Vs Croatia",
//   "Danmark vs France",
//   "Senegal Vs Netherland",
//   "Mexico Vs Poland",
// ];

// class HomePage extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return _HomePage();
//   }
// }

// class _HomePage extends State<HomePage> {
//   String Selected = "Here";
//   @override
//   Widget build(BuildContext context) {
//     DropdownButton<String> android() {
//       List<DropdownMenuItem<String>> itemsList = [];
//       for (String currency in items1) {
//         itemsList.add(DropdownMenuItem(child: Text(currency), value: currency));
//       }
//       return DropdownButton(
//         value: Selected,
//         items: itemsList,
//         iconSize: 30,
//         icon: Icon(Icons.arrow_back, color: Colors.white),
//         onChanged: (value) {
//           setState(() {
//             Selected = value!;
//           });
//         },
//       );
//     }

//     return Container(
//         child: Scaffold(
//       backgroundColor: Color.fromARGB(0, 0, 0, 0),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           GradientAppBar(
//             child: Row(children: [
//               Icon(
//                 Icons.arrow_back,
//                 color: Colors.white,
//               ),
//               SizedBox(width: 30),
//               Text(
//                 "Buy Tickets",
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 26.0,
//                   fontWeight: FontWeight.bold,
//                   fontFamily: 'Qatar',
//                 ),
//               ),
//             ]),
//           ),
//           SizedBox(width: 20),
//           Padding(
//             padding: EdgeInsets.fromLTRB(15, 0, 0, 10),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   "One More Step!",
//                   textAlign: TextAlign.left,
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 28.0,
//                     fontWeight: FontWeight.bold,
//                     fontFamily: 'Qatar',
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(
//             height: 45,
//           ),

//           Container(
//             alignment: Alignment.center,
//             padding: const EdgeInsets.all(10.0),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 const Text(
//                   "Choose Game",
//                   style: TextStyle(color: Colors.white, fontFamily: 'Qatar'),
//                 ),
//                 DropdownButton(
//                   icon: Icon(
//                     Icons.search,
//                   ),
//                   items: items1
//                       .map((e) => DropdownMenuItem(child: Text(e), value: e))
//                       .toList(),
//                   onChanged: (value) {
//                     setState(() {});
//                   },
//                 ),
//                 SizedBox(
//                   height: 85,
//                 ),
//                 Padding(
//                   padding:
//                       const EdgeInsets.symmetric(vertical: 0, horizontal: 18),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       Text(
//                         'Credit Card Info',
//                         style: TextStyle(
//                             fontFamily: 'Qatar',
//                             fontSize: 15,
//                             color: Colors.white,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 SingleChildScrollView(
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Round(
//                       isicon: false,
//                       hintText: 'Number',
//                       onChanged: (value) {},
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(vertical: 10,horizontal:13 ),
//                   child: Row(
//                     children: <Widget>[
//                       Expanded(
//                         child: Round(
//                           isicon: false,
//                           hintText: 'CCV',
//                           onChanged: (value) {},
//                         ),
//                       ),
//                       SizedBox(
//                         width: 10,
//                       ),
//                       Expanded(
//                         child: Round(
//                           isicon: false,
//                           hintText: 'dd/yy',
//                           onChanged: (value) {},
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 SizedBox(
//                   height: 180,
//                 ),
//                 RoundeB(
//                   text: 'Next',
//                   press: () {},
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     ));
//   }
// }

// class GradientAppBar extends StatelessWidget {
//   final Widget child;
//   final double barHeight = 120;

//   const GradientAppBar({
//     Key? key,
//     required this.child,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final double statusbarHeight = MediaQuery.of(context).padding.top;

//     return Container(
//       alignment: Alignment.topCenter,
//       width: double.infinity,
//       padding: EdgeInsets.only(top: statusbarHeight),
//       height: statusbarHeight + barHeight,
//       decoration: const BoxDecoration(
//         gradient: LinearGradient(
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//             colors: [Color(0xff871F3A), Colors.transparent]),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: child,
//       ),
//     );
//   }
// }
