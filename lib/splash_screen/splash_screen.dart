import 'package:flutter/material.dart';
import 'package:superhero_ui/home/home.dart';

class SplashScreenView extends StatelessWidget {
  const SplashScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: _SplashScreenForm(),
    );
  }
}

class _SplashScreenForm extends StatefulWidget {
  const _SplashScreenForm();

  @override
  State<_SplashScreenForm> createState() => _SplashScreenFormState();
}

class _SplashScreenFormState extends State<_SplashScreenForm>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _initialiseController();
  }

  void _initialiseController() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )
      ..forward()
      ..addListener(() {
        if (_controller.isCompleted) {
          Future.delayed(const Duration(seconds: 2)).then(
              (value) => Navigator.pushReplacement(context, HomePage.route()));
        }
      });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return SizedBox(
            height: _controller.value * 1000,
            child: Image.asset('assets/logo.png'),
          );
        },
      ),
    );
  }
}
