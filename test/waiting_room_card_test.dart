// test/waiting_room_card_test.dart
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:waiting_room_app/waiting_room_card.dart';
import 'package:waiting_room_app/waiting_room_timestamp.dart';

void main() {
  testWidgets('WaitingRoomCard displays the name and timestamp', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: WaitingRoomCard(name: 'Alice'),
      ),
    );

    expect(find.text('Hello,'), findsOneWidget);
    expect(find.text('Alice'), findsOneWidget);
    expect(find.byType(WaitingRoomTimestamp), findsOneWidget);
    expect(find.textContaining('Updated at'), findsOneWidget);
  });
}