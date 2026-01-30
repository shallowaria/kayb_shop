import 'package:flutter/material.dart';

class KbSlider extends StatefulWidget {
  const KbSlider({super.key});

  @override
  KbSliderState createState() => KbSliderState();
}

class KbSliderState extends State<KbSlider> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: Colors.blue,
      alignment: Alignment.center,
      child: Text('轮播图', style: TextStyle(fontSize: 20, color: Colors.white)),
    );
  }
}
