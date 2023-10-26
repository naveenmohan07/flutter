import 'package:flutter/material.dart';

class PermissionDeniedScreen extends StatefulWidget {
  const PermissionDeniedScreen({super.key});

  @override
  State<PermissionDeniedScreen> createState() => _PermissionDeniedScreenState();
}

class _PermissionDeniedScreenState extends State<PermissionDeniedScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text("PERMISSION_DENIED"),
    );
  }
}
