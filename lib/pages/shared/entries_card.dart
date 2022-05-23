import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:irecharge_interview_task/bLoC/models/entries.dart';
import 'package:irecharge_interview_task/pages/entries_details/entries_details.dart';
import 'package:irecharge_interview_task/utilities/constants/colors.dart';
import 'package:irecharge_interview_task/utilities/size_config/size_config.dart';

class EntriesCard extends StatelessWidget {
  final Entries? entries;
  const EntriesCard({Key? key, required this.entries}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    return InkWell(
      onTap: () => Get.to(() => EntriesDetails(entries: entries)),
      child: Container(
          padding: EdgeInsets.all(8.0),
          width: SizeConfig.screenWidth,
          height: SizeConfig.screenHeight! / 5,
          child: Card(
            elevation: 4,
            child: ListTile(
              leading: entries!.cors! == "no" || entries!.cors! == "unknown"
                  ? const Icon(Icons.cancel, color: AppColors.red)
                  : const Icon(Icons.check_circle, color: AppColors.darkGreen),
              trailing: const Icon(Icons.arrow_forward_ios, size: 15),
              title: Text(entries!.aPI!,
                  style: Theme.of(context).textTheme.headline6),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(entries!.description!,
                    style: Theme.of(context).textTheme.subtitle1),
              ),
            ),
          )),
    );
  }
}
