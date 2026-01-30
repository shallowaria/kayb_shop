import 'package:flutter/material.dart';

class KbSuggestion extends StatefulWidget {
  const KbSuggestion({super.key});

  @override
  KbSuggestionState createState() => KbSuggestionState();
}

class KbSuggestionState extends State<KbSuggestion> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        color: Colors.blue,
        alignment: Alignment.center,
        height: 300,
        child: Text('推荐', style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
