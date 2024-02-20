import 'package:flutter/material.dart';

class InfiniteScreen extends StatefulWidget {
  const InfiniteScreen({super.key});

  @override
  State<InfiniteScreen> createState() => _InfiniteScreenState();
}

class _InfiniteScreenState extends State<InfiniteScreen> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Lista infinita'),
    );
  }
}
