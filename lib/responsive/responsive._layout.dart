// 2nd way to get a responsive design

import 'package:flutter/material.dart';
import 'dimensions.dart';
import 'package:responsivedesign_dart/responsive/dimensions.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileBody;
  final Widget desktopBody;

  ResponsiveLayout({required this.desktopBody, required this.mobileBody});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints){
          if(constraints.maxWidth < mobileWidth) {
            return mobileBody;
          }
          else {
            return desktopBody;
          }
        },
    );
  }
}
