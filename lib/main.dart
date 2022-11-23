import 'package:finalproject/common/components/custom_text_form_field.dart';
import 'package:finalproject/layout/view/login_screen.dart';
import 'package:finalproject/layout/view/root_tab.dart';
import 'package:finalproject/restaurant/restaurant_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    _App(),
  );
}

class _App extends StatelessWidget {
  const _App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RootTab(),
    );
  }
}

