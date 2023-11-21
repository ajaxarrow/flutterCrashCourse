import 'package:flutter/material.dart';
import 'package:flutter_routing/provider/counter_state.dart';
import 'package:flutter_routing/routes/abouts_route.dart';
import 'package:flutter_routing/routes/home_route.dart';
import 'package:flutter_routing/routes/settings_route.dart';
import 'package:provider/provider.dart';

final ColorScheme kColorScheme =
ColorScheme.fromSeed(seedColor: const Color(0xff141164FF));

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (context)=> CounterState())
      ],
      child: MainContainer(),
    )
  );
}



class MainContainer extends StatelessWidget {
  const MainContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData().copyWith(
          // useMaterial3: true,
            colorScheme: kColorScheme,
            appBarTheme: AppBarTheme(
                backgroundColor:kColorScheme.primary
            ),
            inputDecorationTheme: InputDecorationTheme(
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            )

        ),
        initialRoute: '/home',
        routes: {
          '/home': (context) => const HomeRoute(),
          '/abouts': (context) => const AboutRoute(),
          '/settings': (context) => const SettingsRoute()
        }
    );
  }
}

