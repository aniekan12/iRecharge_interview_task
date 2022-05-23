import 'package:flutter/material.dart';
import 'package:irecharge_interview_task/bLoC/models/entries.dart';
import 'package:irecharge_interview_task/bLoC/view_models/entries_view_model.dart';
import 'package:irecharge_interview_task/pages/shared/app_future_builder.dart';
import 'package:irecharge_interview_task/pages/shared/components.dart';
import 'package:irecharge_interview_task/pages/shared/entries_card.dart';
import 'package:irecharge_interview_task/utilities/constants/colors.dart';
import 'package:provider/provider.dart';

class EntriesHome extends StatefulWidget {
  const EntriesHome({Key? key}) : super(key: key);

  @override
  State<EntriesHome> createState() => _EntriesHomeState();
}

class _EntriesHomeState extends State<EntriesHome> {
  EntriesViewModel? vm;
  late Future entries;
  late List<Entries> _entries;

  @override
  void didChangeDependencies() {
    vm = Provider.of<EntriesViewModel>(context);
    super.didChangeDependencies();
  }

  getEntries() {
    entries =
        Provider.of<EntriesViewModel>(context, listen: false).getEntries();
  }

  @override
  void initState() {
    getEntries();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.darkGreen,
      ),
      body: AppFutureBuilder(
        future: entries,
        returnOnData: true,
        onData: (data) {
          _entries = data;
          return _entries.isNotEmpty
              ? listViewSeparatedNoDivider(
                  itemCount: _entries.length,
                  itemBuilder: (context, index) {
                    return EntriesCard(entries: _entries[index]);
                  },
                )
              : noEntries();
        },
      ),
    );
  }

  Widget noEntries() {
    return Center(
        child: Text('there are no entries yet 🙂',
            style: Theme.of(context).textTheme.subtitle1));
  }
}
