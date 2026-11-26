import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';

import 'package:pm_tugas_06_4243250045/main.dart';
import 'package:pm_tugas_06_4243250045/routes/app_router.dart';

void main() {
  setUp(() {
    appRouter.go('/jelajah');
  });

  testWidgets('Katalog menampilkan minimal satu destinasi', (tester) async {
    await tester.binding.setSurfaceSize(const Size(360, 800));
    await tester.pumpWidget(const JelajahSumateraUtaraApp());
    await tester.pumpAndSettle();

    expect(find.text('Jelajah Sumatera Utara'), findsOneWidget);
    expect(find.text('Danau Toba'), findsOneWidget);
  });

  testWidgets('Menekan kartu membuka halaman detail', (tester) async {
    await tester.binding.setSurfaceSize(const Size(360, 800));
    await tester.pumpWidget(const JelajahSumateraUtaraApp());
    await tester.pumpAndSettle();

    await tester.tap(find.text('Danau Toba'));
    await tester.pumpAndSettle();

    expect(find.text('Danau Toba'), findsWidgets);
    expect(find.text('Harga tiket'), findsOneWidget);
  });

  testWidgets('Detail menampilkan informasi destinasi benar', (tester) async {
    appRouter.go('/destinasi/4');
    await tester.binding.setSurfaceSize(const Size(1024, 768));
    await tester.pumpWidget(const JelajahSumateraUtaraApp());
    await tester.pumpAndSettle();

    expect(find.text('Istana Maimun'), findsWidgets);
    expect(find.text('Kota Medan'), findsWidgets);
  });

  testWidgets('ID tidak dikenal menampilkan halaman khusus', (tester) async {
    appRouter.go('/destinasi/999');
    await tester.binding.setSurfaceSize(const Size(600, 800));
    await tester.pumpWidget(const JelajahSumateraUtaraApp());
    await tester.pumpAndSettle();

    expect(find.text('Destinasi Tidak Ditemukan'), findsOneWidget);
  });

  testWidgets('Navigasi antar-tab berfungsi', (tester) async {
    appRouter.go('/jelajah');
    await tester.binding.setSurfaceSize(const Size(360, 800));
    await tester.pumpWidget(const JelajahSumateraUtaraApp());
    await tester.pumpAndSettle();

    await tester.tap(find.text('Tentang'));
    await tester.pumpAndSettle();

    expect(find.text('Tujuan Pengembangan'), findsOneWidget);
  });

  testWidgets('Layout tablet dapat dirender', (tester) async {
    appRouter.go('/jelajah');
    tester.view.devicePixelRatio = 1;
    tester.view.physicalSize = const Size(1024, 900);
    addTearDown(tester.view.reset);
    await tester.pumpWidget(const JelajahSumateraUtaraApp());
    await tester.pumpAndSettle();

    expect(find.text('Jelajah Sumatera Utara'), findsOneWidget);
    expect(find.byType(NavigationRail), findsOneWidget);
  });
}
