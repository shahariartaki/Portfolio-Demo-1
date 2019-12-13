import 'package:flutter_web/material.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget largeScreen;
  final Widget mediumScreen;
  final Widget smallScreen;

  const ResponsiveWidget({
    Key key,
    @required this.largeScreen,
    this.mediumScreen,
    this.smallScreen,
  }) : super(key: key);

//  static bool isSmallScreen(BuildContext context) {
//    return MediaQuery.of(context).size.width < 800;
//  }
//
//  static bool isLargeScreen(BuildContext context) {
//    return MediaQuery.of(context).size.width > 800;
//  }
//
//  static bool isMediumScreen(BuildContext context) {
//    return MediaQuery.of(context).size.width >= 800 &&
//        MediaQuery.of(context).size.width <= 1200;
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return LayoutBuilder(
//      builder: (context, constraints) {
//        if (constraints.maxWidth > 1200) {
//          return largeScreen;
//        } else if (constraints.maxWidth <= 1200 && constraints.maxWidth >= 800) {
//          return mediumScreen ?? largeScreen;
//        } else {
//          return smallScreen ?? largeScreen;
//        }
//      },
//    );
//  }
  static bool isSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < 428;
  }

  static bool isMediumScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 428 &&
        MediaQuery.of(context).size.width < 1125;
  }

  static bool isLargeScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 1125;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1125) {
          return largeScreen;
        } else if (constraints.maxWidth < 1125 && constraints.maxWidth > 767) {
          return mediumScreen ?? largeScreen;
        } else {
          return smallScreen ?? largeScreen;
        }
      },
    );
  }
}
