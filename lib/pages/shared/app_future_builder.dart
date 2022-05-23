import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:irecharge_interview_task/utilities/constants/colors.dart';

class AppFutureBuilder extends StatefulWidget {
  // to reduce redundancy and for uniformity when using FutureBuilder

  final Future? future;
  final Widget? child;
  final Function? onData; // call when snapshot has data
  final bool? returnOnData;

  /// useErrorWidget set to true would display an error message with
  /// a refresh icon instead of swiping to refresh when used as the child of an
  /// AppRefreshIndicator
  final bool? useErrorWidget;

  // For displaying permission error widget when an admin user
  // doesn't have the permission to perform an action, triggered by 403 code
  final bool? showPermissionError;

  /// Callback when useErrorWidget is true
  final VoidCallback? onRefresh;

  AppFutureBuilder({
    @required this.future,
    this.child,
    this.onData,
    this.returnOnData = false,
    this.useErrorWidget = false,
    this.onRefresh,
    this.showPermissionError = false,
  });

  @override
  _AppFutureBuilderState createState() => _AppFutureBuilderState();
}

class _AppFutureBuilderState extends State<AppFutureBuilder> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: widget.future,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(color: AppColors.red),
          );
        }

        if (snapshot.hasError) {
          if (kDebugMode) {
            debugPrint("Error in future builder: ${snapshot.stackTrace}");
          }

          if (widget.useErrorWidget!) return Center(child: errorWidget());
          return errorTextWidget();
        }

        if (snapshot.hasData) {
          // print(snapshot.data);
          if (widget.returnOnData!)
            // ignore: curly_braces_in_flow_control_structures
            return widget.onData?.call(snapshot.data);
          else
            // ignore: curly_braces_in_flow_control_structures
            widget.onData?.call(snapshot.data);
        }

        return widget.child!;
        // return widget.child;
      },
    );
  }

  Widget errorWidget() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          "An error occurred. Tap to reload",
          style: TextStyle(color: AppColors.grey),
        ),
        IconButton(
            icon: const Icon(Icons.refresh), onPressed: widget.onRefresh?.call)
      ],
    );
  }

  Widget errorTextWidget() {
    return Center(
        child: Text("An error occurred. Swipe to refresh",
            style: Theme.of(context).textTheme.bodyText2));
  }
}
