import 'package:flutter/material.dart';

class UnAuthorizedScreen extends StatefulWidget {
  const UnAuthorizedScreen({super.key});

  @override
  State<UnAuthorizedScreen> createState() => _UnAuthorizedScreenState();
}

class _UnAuthorizedScreenState extends State<UnAuthorizedScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("UN_AUTHORIZED_SCREEN")),
    );
  }
}
