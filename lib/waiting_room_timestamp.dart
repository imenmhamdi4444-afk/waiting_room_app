import 'dart:async';

import 'package:flutter/material.dart';

class WaitingRoomTimestamp extends StatefulWidget {
  const WaitingRoomTimestamp({super.key});

  @override
  State<WaitingRoomTimestamp> createState() => _WaitingRoomTimestampState();
}

class _WaitingRoomTimestampState extends State<WaitingRoomTimestamp> {
  late DateTime _currentTime;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _currentTime = DateTime.now();
    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      setState(() {
        _currentTime = DateTime.now();
      });
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final formattedTime = _currentTime.toLocal().toString().split(' ')[1].substring(0, 8);

    return Text(
      'Updated at $formattedTime',
      style: const TextStyle(fontSize: 14, color: Colors.grey),
    );
  }
}
