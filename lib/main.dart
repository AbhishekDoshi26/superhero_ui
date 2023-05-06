import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:superhero_ui/home/home.dart';
import 'package:superhero_ui/splash_screen/splash_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(locationService: LocationService())
        ..add(const FetchCurrentLocation()),
      child: const MaterialApp(
        title: 'Material App',
        home: SplashScreenView(),
      ),
    );
  }
}
