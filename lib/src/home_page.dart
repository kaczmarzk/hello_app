import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hello_app/src/cubit/home_page_cubit.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomePageCubit(),
      child: const Scaffold(
        backgroundColor: Color(0xFF292D2E),
        body: _Body(),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Hello World',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24.0,
          ),
        ),
        const SizedBox(height: 200.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: context.read<HomePageCubit>().startAnimation,
              child: const Text('Start'),
            ),
            const SizedBox(width: 30.0),
            ElevatedButton(
              onPressed: context.read<HomePageCubit>().startAnimation,
              child: const Text('Stop'),
            ),
          ],
        ),
      ],
    );
  }
}
