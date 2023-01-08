import 'package:flutter/material.dart';
import 'package:later/domain/repository/record_repository_imlp.dart';
import 'package:later/di/later_di.dart';

class HomeAllRecordsList extends StatefulWidget {
  const HomeAllRecordsList({Key? key}) : super(key: key);

  @override
  State<HomeAllRecordsList> createState() => _HomeAllRecordsListState();
}

class _HomeAllRecordsListState extends State<HomeAllRecordsList> {
  final stream = injector<RecordRepository>().watchAll();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: stream,
      builder: (context, snapshot) {
        final data = snapshot.data;

        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        }

        if (data == null) {
          return const Text('error!');
        }

        if (data.isEmpty) {
          return const Text('Empty!');
        }

        return ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            final record = data[index];

            return Text(record.title);
          },
        );
      },
    );
  }
}
