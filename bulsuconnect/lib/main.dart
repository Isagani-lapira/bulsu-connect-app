import 'package:bulsuconnect/page/onboarding/onboadingmain.dart';
import 'package:bulsuconnect/theme/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BulsuConnect());
}

class BulsuConnect extends StatefulWidget {
  const BulsuConnect({super.key});

  @override
  State<BulsuConnect> createState() => _BulsuConnectState();
}

class _BulsuConnectState extends State<BulsuConnect> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.themeData,
      home: const OnBoardingMain(),
    );
  }
}
