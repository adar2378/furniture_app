import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white, fontFamily: "Metropolis"),
      builder: (context, child) {
        // Helps us to scale our app for different screen sizes
        ScreenUtil.init(context,
            height: 812, width: 377, allowFontScaling: true);
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(),
          child: child,
        );
      },
      home: HomePage(),
    );
  }
}
