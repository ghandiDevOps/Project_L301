import 'dart:async';
import 'package:flutter/material.dart';
import 'animationTime.dart';

class connexionPage extends StatefulWidget {
  const connexionPage({super.key});

  @override
  State<connexionPage> createState() => _connexionPageState();
}

class _connexionPageState extends State<connexionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('boussole'),
      ),
      body: const Center(
        child: animationTimer(
          time: 1200,
          child: FlutterLogo(
            size: 100,
            style: FlutterLogoStyle.stacked,
          ),
        ),
      ),
    );
  }
}
