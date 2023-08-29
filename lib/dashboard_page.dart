import 'package:flutter/material.dart';
import 'package:flutter_demoapp/color_palette.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette().scaffoldBg,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.fromLTRB(15.0, 25.0, 15.0, 5.0),
              child: const Row(
                children: <Widget>[],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
