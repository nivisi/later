import 'package:flutter/material.dart';
import 'package:later/presentation/feature/home/widget/home_all_records_list.dart';
import 'package:later/presentation/navigation/later_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Hey, welcome to later!'),
            TextButton(
              onPressed: () {
                context.router.push(const RecordRoute());
              },
              child: const Text('Open record page'),
            ),
            const Expanded(child: HomeAllRecordsList()),
          ],
        ),
      ),
    );
  }
}
