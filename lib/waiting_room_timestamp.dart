import 'package:flutter/material.dart';

class WaitingRoomTimestamp extends StatelessWidget {
  const WaitingRoomTimestamp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Estimated wait: 5 minutes',
      style: TextStyle(fontSize: 14, color: Colors.grey),
    );
  }
}
