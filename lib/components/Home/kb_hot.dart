import 'package:flutter/material.dart';

class KbHot extends StatefulWidget {
  const KbHot({super.key});

  @override
  KbHotState createState() => KbHotState();
}

class KbHotState extends State<KbHot> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.blue,
      alignment: Alignment.center,
      child: Text('爆款推荐', style: TextStyle(color: Colors.white)),
    );
  }
}
