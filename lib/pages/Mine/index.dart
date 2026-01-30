import 'package:flutter/material.dart';

class MineView extends StatefulWidget {
  const MineView({super.key});

  @override
  MineViewState createState() => MineViewState();
}

class MineViewState extends State<MineView> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('我的'));
  }
}
