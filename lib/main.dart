import 'package:material_ui/material_ui.dart';

import 'routes/app_router.dart';

void main() {
  runApp(const JelajahSumateraUtaraApp());
}

class JelajahSumateraUtaraApp extends StatelessWidget {
  const JelajahSumateraUtaraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Jelajah Sumatera Utara',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF006B5F)),
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF006B5F),
          brightness: Brightness.dark,
        ),
      ),
      routerConfig: appRouter,
    );
  }
}
