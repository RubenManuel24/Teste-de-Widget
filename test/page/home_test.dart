import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:test_unitario_widget/page/home.dart';
import 'package:test_unitario_widget/page/second_page.dart';

void main() {

  Widget fazerTestWidget(Widget widget) => MaterialApp(home: widget);

  testWidgets('Deve ter Hello World', (tester) async {
     await tester.pumpWidget(fazerTestWidget(Home()));

     expect(find.text("Hello World"), findsWidgets);
  });

 testWidgets("Mudar de Página", (tester) async {
  await tester.pumpWidget(fazerTestWidget(Home()));

  await tester.tap(find.byKey(Key("Botao de mudar pagina")));

  await tester.pumpAndSettle();

  expect(find.byType(SecondPage), findsWidgets);

 });

 testWidgets("Deve add valor no contador", (tester) async{
   await tester.pumpWidget(fazerTestWidget(Home()));

   await tester.tap(find.byKey(Key("Add valor")));

   await tester.pump();

   expect(find.text("Contador: 1"), findsOneWidget);

 });

 testWidgets("De zerar valor contador", (tester) async {
   await tester.pumpWidget(fazerTestWidget(Home()));

   await tester.tap(find.byKey(Key("Zerar valor")));

   await tester.pump();

   expect(find.text("Contador: 0"), findsOneWidget);

 });

}