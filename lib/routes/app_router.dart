import 'package:go_router/go_router.dart';

import '../data/data_destinasi.dart';
import '../pages/halaman_detail.dart';
import '../pages/halaman_jelajah.dart';
import '../pages/halaman_tentang.dart';
import '../pages/halaman_tidak_ditemukan.dart';
import '../pages/halaman_utama.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/jelajah',
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return HalamanUtama(navigationShell: navigationShell);
      },
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/jelajah',
              builder: (context, state) => const HalamanJelajah(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/tentang',
              builder: (context, state) => const HalamanTentang(),
            ),
          ],
        ),
      ],
    ),
    GoRoute(
      path: '/destinasi/:id',
      builder: (context, state) {
        final idText = state.pathParameters['id'];
        final id = int.tryParse(idText ?? '');
        final destinasi = id == null ? null : cariDestinasi(id);

        if (destinasi == null) {
          return const HalamanTidakDitemukan();
        }
        return HalamanDetail(destinasi: destinasi);
      },
    ),
  ],
);
