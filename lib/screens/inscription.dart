
// import 'package:flutter/material.dart';

// import '../widget/gradient_appbar.dart';


// class inscription extends StatelessWidget {
//   get _controller => null;

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: SafeArea(
//         child: Scaffold(
//           resizeToAvoidBottomInset: false,
//           backgroundColor: Colors.teal,
//           body: Stack(
//             children: <Widget>[
//               Image.asset(
//                 'assets/images/stade.jpg',
//                 fit: BoxFit.cover,
//                 height: double.infinity,
//                 width: double.infinity,
//               ),
//               Container(
//                 decoration: BoxDecoration(
//                   gradient: LinearGradient(
//                     begin: Alignment.topRight,
//                     end: Alignment.bottomLeft,
//                     colors: [
//                       Colors.transparent,
//                       Colors.black54,
//                       Colors.black87,
//                       Colors.black,
//                       Colors.black,
//                     ],
//                   ),
//                 ),
//                 child: Center(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.stretch,
//                     children: [
//                       GradientAppBar(
//                           child: Row(
//                         children: <Widget>[
//                           Padding(
//                             padding: EdgeInsets.fromLTRB(15, 0, 0, 10),
//                           ),
//                           Icon(
//                             Icons.arrow_back,
//                             color: Colors.white,
//                           ),
//                           SizedBox(width: 30),
//                           Text(
//                             'Buy Tickets',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontFamily: 'Qatar',
//                               fontWeight: FontWeight.bold,
//                               fontSize: 26.0,
//                             ),
//                           )
//                         ],
//                       )),
//                       SizedBox(
//                         height: 200,
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.symmetric(
//                           horizontal: 46,
//                         ),
//                         child: Text(
//                           'Please Fill The Form',
//                           style: TextStyle(
//                             fontFamily: 'Qatar',
//                             fontSize: 30.0,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.white,
//                           ),
//                         ),
//                       ),
//                       SizedBox(height: 70),
//                       Padding(
//                         padding: const EdgeInsets.symmetric(
//                           horizontal: 46,
//                         ),
//                         child: Text(
//                           'Full Name',
//                           style: TextStyle(
//                             fontFamily: 'Qatar',
//                             fontSize: 15.0,
//                             color: Colors.white,
//                           ),
//                         ),
//                       ),
//                       Column(
//                         children: [
//                           Round(
//                             hintText: 'Full Name',
//                             onChanged: (value) {},
//                           ),
//                         ],
//                       ),
//                       SizedBox(
//                         height: 30,
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.symmetric(
//                             vertical: 0, horizontal: 46),
//                         child: Text(
//                           'Email Address',
//                           style: TextStyle(
//                             fontFamily: 'Qatar',
//                             fontSize: 15.0,
//                             color: Colors.white,
//                           ),
//                         ),
//                       ),
//                       Column(
//                         children: [
//                           Round(
//                             hintText: '@gmail.com',
//                             onChanged: (value) {},
//                           ),
//                         ],
//                       ),
//                       SizedBox(
//                         height: 60,
//                       ),
//                       Column(
//                         children: <Widget>[
//                           RoundeB(
//                             text: 'Next',
//                             press: () {},
//                           ),
//                         ],
//                       ),
//                       SizedBox(
//                         height: MediaQuery.of(context).viewInsets.bottom,
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
