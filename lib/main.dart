import 'package:flutter/material.dart';
import 'package:responsivedesign_dart/responsive/desktop_body.dart';
import 'package:responsivedesign_dart/responsive/mobile_body.dart';
import 'package:responsivedesign_dart/responsive/responsive._layout.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(
        mobileBody: MobileBody(),
        desktopBody: DesktopBody(),
      ),
    );
  }
}



//1st way to get a responsive design

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     final currentWidth = MediaQuery.of(context).size.width;
//
//     return Scaffold(
//       backgroundColor: currentWidth <600 ? Colors.blue[900]: Colors.brown[500],
//       body: Center(child: Text(currentWidth.toString()),
//       ),
//     );
//   }
// }

