import 'dart:async';

import 'package:flutter/material.dart';
import 'package:later/domain/repository/record_repository_impl.dart';
import 'package:later/di/later_di.dart';

class RecordPage extends StatefulWidget {
  const RecordPage({super.key});

  @override
  State<RecordPage> createState() => _RecordPageState();
}

class _RecordPageState extends State<RecordPage> {
  StreamSubscription? subscription;

  late final repo = injector<RecordRepository>();
  late final allStream = repo.watchAll();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('This is a record page'),
          TextButton(
            onPressed: () {
              repo.create(title: 'New');
            },
            child: const Text('Create new record'),
          ),
        ],
      ),
    );
  }
}
