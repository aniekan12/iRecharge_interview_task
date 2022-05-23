import 'package:flutter/material.dart';
import 'package:irecharge_interview_task/bLoC/models/entries.dart';

class DetailsWidget extends StatelessWidget {
  const DetailsWidget({
    Key? key,
    required this.entries,
  }) : super(key: key);

  final Entries? entries;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        ExpansionTile(
          title: ListTile(
            title: Text('Category',
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(fontSize: 17)),
          ),
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 17.0),
              child: ListTile(title: Text(entries!.category!)),
            ),
          ],
        ),
        ExpansionTile(
          title: ListTile(
            title: Text('Auth',
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(fontSize: 17)),
          ),
          children: [
            entries!.auth!.isEmpty
                ? const Padding(
                    padding: EdgeInsets.only(left: 17.0),
                    child: ListTile(title: Text('Not available')),
                  )
                : Padding(
                    padding: const EdgeInsets.only(left: 17.0),
                    child: ListTile(title: Text(entries!.auth!)),
                  ),
          ],
        ),
        ExpansionTile(
          title: ListTile(
            title: Text('Https',
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(fontSize: 17)),
          ),
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 17.0),
              child: ListTile(title: Text(entries!.hTTPS!.toString())),
            ),
          ],
        ),
        ExpansionTile(
          title: ListTile(
            title: Text('Cors',
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(fontSize: 17)),
          ),
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 17.0),
              child: ListTile(title: Text(entries!.cors!)),
            ),
          ],
        ),
        ExpansionTile(
          title: ListTile(
            title: Text('Link',
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(fontSize: 17)),
          ),
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 17.0),
              child: ListTile(title: Text(entries!.link!)),
            ),
          ],
        ),
      ],
    );
  }
}
