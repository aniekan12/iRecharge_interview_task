import 'package:irecharge_interview_task/bLoC/view_models/entries_view_model.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

final providers = <SingleChildWidget>[
  ChangeNotifierProvider(create: (_) => EntriesViewModel()),
];
