import 'package:flutter_test/flutter_test.dart';

import 'package:waiting_room_app/main.dart';
import 'package:waiting_room_app/waiting_room_card.dart';

void main() {
  testWidgets('MyApp shows the waiting room screen', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Waiting Room'), findsOneWidget);
    expect(find.byType(WaitingRoomCard), findsOneWidget);
    expect(find.text('John Doe'), findsOneWidget);
  });
}
